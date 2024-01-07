//
//  N_ARIA_UITestsLaunchTests.swift
//  N-ARIA-UITests
//
//  Created by Chris McMeeking on 12/26/23.
//

import XCTest

final class N_ARIA_UITestsLaunchTests: XCTestCase {
	
	let app:XCUIApplication = XCUIApplication()
	
	var expectation:XCTestExpectation = XCTestExpectation()
		
	override func setUp() {
		continueAfterFailure = true
		app.launch()
	}
		
	func testLaunch() throws {
			
		XCTAssert(app.staticTexts["N-ARIA"].waitForExistence(timeout: 2))
		uploadSnapshot(name:"n-aria")
	}
	
	func testContacts() throws {
		
		XCTAssert(app.staticTexts["N-ARIA"].waitForExistence(timeout: 2))
		app.buttons["Contacts"].tap()
		
		XCTAssert(app.staticTexts["Contacts"].waitForExistence(timeout: 2))
		uploadSnapshot(name:"contacts")
	}
	
	func testContactsBugs() throws {
		
		XCTAssert(app.staticTexts["N-ARIA"].waitForExistence(timeout: 2))
		app.buttons["Contacts"].tap()
		
		XCTAssert(app.staticTexts["Contacts"].waitForExistence(timeout: 2))
		app.buttons["Bugs"].tap()
		
		XCTAssert(app.staticTexts["Chris McMeeking"].waitForExistence(timeout: 2))
		uploadSnapshot(name:"contacts-bugs")
	}
	
	func testContactsDetails() throws {
		
		XCTAssert(app.staticTexts["N-ARIA"].waitForExistence(timeout: 2))
		app.buttons["Contacts"].tap()
				
		XCTAssert(app.staticTexts["Chris McMeeking"].waitForExistence(timeout: 2))
		app.buttons["Chris McMeeking"].tap()
		
		XCTAssert(app.staticTexts["Chris McMeeking"].waitForExistence(timeout: 2))
		uploadSnapshot(name:"contacts-details")
	}
	
	func testForm() throws {
		
		XCTAssert(app.staticTexts["N-ARIA"].waitForExistence(timeout: 2))
		app.buttons["Form"].tap()
		
		XCTAssert(app.staticTexts["Simple Form"].waitForExistence(timeout: 2))
	
		uploadSnapshot(name:"form")
	}
	
	override func tearDown() { }
	
	func uploadSnapshot(name:String) {
		
		let expectation: XCTestExpectation = self.expectation(description: "Requests complete.")
		expectation.expectedFulfillmentCount = 1
		
		do {
			let dictionary = try app.snapshot().dictionaryRepresentation
			let jsonData = try JSONSerialization.data(withJSONObject: dictionary)
			var request = URLRequest(
				url: URL(string: "https://db.moba11y.com/n-aria/xc-snapshot/\(name)/tree")!
			)
			
			request.httpMethod = "PUT"
			request.setValue("\(String(describing: jsonData.count))", forHTTPHeaderField: "Content-Length")
			request.setValue("application/json", forHTTPHeaderField: "Content-Type")
			request.httpBody = jsonData

			let task = URLSession.shared.dataTask(with: request) { [self] data, response, error in
				
				if ((error) != nil) {
					print("-!- Error Uploading Snapshot: \(error.debugDescription)")
				} else {
					let response = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String: String]
					print("Snapshot Upload Successful: \(response.debugDescription)")
					uploadScreenshot(key: (response["path"]!), expectation: expectation)
				}
			}
			
			task.resume()
		} catch {
			XCTFail("Failed to upload snapshot.")
		}
		
		waitForExpectations(timeout: 5)
	}
	
	func uploadScreenshot(key:String, expectation: XCTestExpectation) {
		
		let screenshot = app.screenshot()
		
		let dictionary = ["image": screenshot.pngRepresentation.base64EncodedString()]
		let jsonData = try! JSONSerialization.data(withJSONObject: dictionary)
		var request = URLRequest(url: URL(string: "https://db.moba11y.com\(key)/image")!)
				
		request.httpMethod = "PUT"
		request.setValue("\(String(describing: request.httpBody?.count))", forHTTPHeaderField: "Content-Length")
		request.setValue("application/json", forHTTPHeaderField: "Content-Type")
		request.httpBody = jsonData
		
		let task = URLSession.shared.dataTask(with: request) { data, response, error in
			
			if ((error) != nil) {
				print("-!- Error Uploading Screenshot: \(error.debugDescription)")
			} else {
				let response = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String: String]
				print("Successfully Uploaded Screenshot: \(response.description)")
			}
						
			expectation.fulfill()
		}
		
		task.resume()
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
