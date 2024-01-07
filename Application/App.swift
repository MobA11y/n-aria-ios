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
					
					NAriaSubTitle(text: "Don't add miscommunication to your list of barriers in creating accessible iOS content. Have your teams explore N-ARIA Design Systen Documentation for 5 minutes instead.").padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Learn")
							NAriaSubTitle(text:"Presents select N-ARIA Design System Components and explains the related WCAG principles.")
							NAriaCTA(label: "iOS Accessibility Guidelines") {
								Nav.shared.navigateTo(.guidelines)
							}.padding()
						}
					}.padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Explore")
							NAriaSubTitle(text:"The entire N-ARIA Design System by component. Useful for agreeing about how a component should implemented!")
							NAriaCTA(label: "N-ARIA Design System") {
								Nav.shared.navigateTo(.patterns)
							}.padding()
						}
					}.padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Share")
							NAriaSubTitle(text:"Sometimes having a collection of anti patterns to explore is useful! Let us know if you think you have found one worth adding. @MobA11y")
							NAriaCTA(label: "Collection of Antipatterns") {
								Nav.shared.navigateTo(.antipatterns)
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
