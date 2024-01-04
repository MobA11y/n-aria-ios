//
//  N_ARIA_UITestsLaunchTests.swift
//  N-ARIA-UITests
//
//  Created by Chris McMeeking on 12/26/23.
//

import XCTest

final class N_ARIA_UITestsLaunchTests: XCTestCase {
	
	let app:XCUIApplication = XCUIApplication()
	
	
	override func setUp() {
		continueAfterFailure = true
		app.launch()
	}
	
	func testLaunch() throws {
		
		let expectation = self.expectation(description: "2 Successful requests.")
		expectation.expectedFulfillmentCount = 2
		
		XCTAssert(app.staticTexts["N-ARIA"].waitForExistence(timeout: 2))
		
		uploadSnapshot(name:"n-aria", expectation:expectation)
		
		waitForExpectations(timeout: 5)
	}
	
	func testContacts() throws {
		let expectation = self.expectation(description: "2 Successful requests.")
		expectation.expectedFulfillmentCount = 2
		
		XCTAssert(app.staticTexts["N-ARIA"].waitForExistence(timeout: 2))
		app.buttons["Contact Card"].tap()
		
		XCTAssert(app.staticTexts["Contacts"].waitForExistence(timeout: 2))
		uploadSnapshot(name:"contacts", expectation: expectation)
		waitForExpectations(timeout: 5)
	}
	
	override func tearDown() {
		screenShot()
		snapShot()
	}
	
	func uploadScreenshot(key:String, expectation: XCTestExpectation) {
		let screenshot = app.screenshot()
		
		let dictionary = ["image": screenshot.pngRepresentation.base64EncodedString()]
		let jsonData = try! JSONSerialization.data(withJSONObject: dictionary)
		var request = URLRequest(url: URL(string: "http://localhost:420\(key)/image")!)
				
		request.httpMethod = "PUT"
		request.setValue("\(String(describing: request.httpBody?.count))", forHTTPHeaderField: "Content-Length")
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		request.httpBody = jsonData
		
		print("Key: \(key)")
		let task = URLSession.shared.dataTask(with: request) { data, response, error in
			
			if ((error) != nil) {
				print("---- Error Uploading Snapshot: \(error.debugDescription)")
			}
						
			let response = try? JSONSerialization.jsonObject(with: data!, options: [])
			print("Screenshot Reponse: \(response.debugDescription)")
			expectation.fulfill()
		}
		
		task.resume()
	}
	
	func uploadSnapshot(name:String, expectation: XCTestExpectation) {
		do {
			let dictionary = try app.snapshot().dictionaryRepresentation
			let jsonData = try JSONSerialization.data(withJSONObject: dictionary)
			var request = URLRequest(
				url: URL(string: "http://localhost:420/n-aria/xc-snapshot/\(name)/tree")!
			)
			
			request.httpMethod = "PUT"
			request.setValue("\(String(describing: jsonData.count))", forHTTPHeaderField: "Content-Length")
			request.setValue("application/json", forHTTPHeaderField: "Content-Type")
			request.httpBody = jsonData

			let task = URLSession.shared.dataTask(with: request) { [self] data, response, error in
				
				if ((error) != nil) {
					print("---- Error Uploading Snapshot: \(error.debugDescription)")
				}
				
				let response = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String: String]
				print("\(response.debugDescription)")
				expectation.fulfill()
				uploadScreenshot(key: (response["path"]!), expectation: expectation)
			}
			
			task.resume()
		} catch {
			XCTFail("Failed to upload snapshot.")
		}
	}
	
	func snapShot() {
		do {
			let dict = try app.snapshot().dictionaryRepresentation
			let data = try JSONSerialization.data(withJSONObject: dict, options: .prettyPrinted)
			let snapshot = XCTAttachment(string: String(decoding: data, as: UTF8.self))
			snapshot.name = "Launch Screen - Snapshot"
			snapshot.lifetime = .keepAlways
			add(snapshot)
		} catch {
			XCTFail("Failed to save snapshot.")
		}
	}
	
	func screenShot() {
		let screenshot = XCTAttachment(screenshot: app.screenshot())
		screenshot.name = "Launch Screen - Screenshot"
		screenshot.lifetime = .keepAlways
		add(screenshot)
	}
}
