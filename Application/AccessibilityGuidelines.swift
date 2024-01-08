//
//  AccessibilityGuidelines.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/7/24.
//

import SwiftUI

struct AccessibilityGuidelines: View {
	
	var body: some View {
		
		NAriaList {
			
			NAriaSection(header: "Principles") {
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "1. Perceivable")
				} destination: {
					NAriaContactCard(contact: Data.contacts.first!).navigationTitle("NAriaContactCard")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "2. Operable")
				} destination: {
					NAriaContactCard(contact: Data.contacts.first!).navigationTitle("NAriaContactCard")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "3. Understandable")
				} destination: {
					NAriaContactCard(contact: Data.contacts.first!).navigationTitle("NAriaContactCard")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "4. Robust")
				} destination: {
					NAriaContactCard(contact: Data.contacts.first!).navigationTitle("NAriaContactCard")
				}
			}
			
			NAriaSection(header: "Basics") {
				NAriaNavigationLink {
					NAriaListIcon(image: "person.3", label: "NAriaContacts")
				} destination: {
					NAriaContacts(list:Data.contacts)
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person", label: "NAriaPerson")
				} destination: {
					NAriaPerson().navigationTitle("NAriaPerson")
				}
			}
			
			NAriaSection(header: "Accessibility Element") {
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.3", label: "AccessibilityLabel")
				} destination: {
					NAriaContacts(list:Data.contacts)
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person", label: "AccessibilityValue")
				} destination: {
					NAriaPerson().navigationTitle("NAriaPerson")
				}
			}
		}.navigationTitle("Guidelines")

	}
}

#Preview {
	AccessibilityGuidelines()
}
