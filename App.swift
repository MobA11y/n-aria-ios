//
//  NARIAApp.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/12/23.
//

import Auth0
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
	
	@State var user: User = User()
	
	var body: some View {
		
		NAriaApp(title: "N-ARIA") {
			
			VStack {
				ScrollView {
					
					NAriaBox {
						VStack {
							NAriaHeadline(text:"Learn")
							NAriaSubTitle(text:"Presents select N-ARIA Design System Components and explains the related Accessibility Principles.")
							NAriaCTA(label: "iOS Accessibility Guidelines") {
								Nav.shared.navigateTo(.guidelines)
							}.padding().accessibilityIdentifier("guidelines")
						}
					}.padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Explore")
							NAriaSubTitle(text:"The entire N-ARIA Design System by component. Link your annotation kits to these articles on our documentation site!")
							NAriaCTA(label: "N-ARIA Design System") {
								Nav.shared.navigateTo(.patterns)
							}.padding().accessibilityIdentifier("design")
						}
					}.padding()
				}
				
				Spacer()
								
				NAriaUser(user:$user)
									
			}.navigationDestination(for:Collections.self) { destination in
				Collections.setViewForDestination(destination)
			}
			
		}.environmentObject(Nav.shared)
			.environmentObject(user)
	}
}

#Preview {
	ZStack {
		MainContent()
	}
}
