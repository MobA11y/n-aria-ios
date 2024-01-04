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
	
	@ScaledMetric(relativeTo:.body) var size = 20
	
	var body: some View {
		
		NAriaNav(title: Strings.appName()) {
			
			NAriaSection(header: Strings.componentsHeader()) {
				
				NAriaNavigationLink {
					NAriaListIcon(
						image: "Icon-Contacts",
						label: "Contact Card",
						shouldAutoLayout: false
					).accessibilityIdentifier("contact-card")
				} destination: {
					ContactsList()
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "Icon-TextField", label: "Text Field")
				} destination: {
					SimpleForm()
				}
			}
			
			NAriaSection(header: Strings.demosHeader()) {
				NAriaNavigationLink {
					NAriaListIcon(image: "Icon-TextField", label: "Simple Form")
				} destination: {
					SimpleForm()
				}
			}
		}
	}
}

#Preview {
	ZStack {
		MainContent()
	}
}
