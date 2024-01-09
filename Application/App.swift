//
//  NARIAApp.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/12/23.
//

import SwiftUI

@main struct NARIAApp: App {
	
	var body: some Scene {
		WindowGroup {
			ZStack {
				MainContent()
			}
		}
	}
}

struct MainContent: View {
		
	var body: some View {
		
		NAriaApp(title: "N-ARIA") {
			
			ScrollView{
				
				VStack {
					
					NAriaBox {
						VStack {
							NAriaHeadline(text:"Learn")
							NAriaSubTitle(text:"Presents select N-ARIA Design System Components and explains the related Accessibility Principles.")
							NAriaCTA(label: "iOS Accessibility Guidelines") {
								Nav.shared.navigateTo(.guidelines)
							}.padding()
						}
					}.padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Explore")
							NAriaSubTitle(text:"The entire N-ARIA Design System by component. Link your annotation kits to these articles on our documentation site!")
							NAriaCTA(label: "N-ARIA Design System") {
								Nav.shared.navigateTo(.patterns)
							}.padding()
						}
					}.padding()

				}.navigationDestination(for:Collections.self) { destination in
					Collections.setViewForDestination(destination)
				}
			}
		}.environmentObject(Nav.shared)
	}
}

#Preview {
	ZStack {
		MainContent()
	}
}
