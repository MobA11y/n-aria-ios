//
//  ContactsListDemo.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import SwiftUI

struct WCAG131: View {
	
	var list:[Contact] = Data.contacts
		
	@FocusState var focusState: Bool
	
	var body: some View {
		
		VStack {
			NariaTabView {
				NAriaTab {
					NAriaList {
						NAriaSection(header: "Interactive") {
							ForEach(Data.contacts) { contact in
								NAriaContact(contact: contact)
							}
						}
						
						NAriaSection(header: "Informative") {
							ForEach(Data.contacts) { contact in
								NAriaContactCard(contact: contact)
							}
						}
					}
					
				} tabItem: {
					Label("Patterns",systemImage: "accessibility")
						.accessibilityIdentifier("wcag131")
				}
				
				NAriaTab {
					
					NAriaList {
						
						NAriaSection(header: "Interactive") {
							ForEach(Data.contacts) { contact in
								NAriaContact_1(contact: contact)
							}
						}
						
						NAriaSection(header: "Informative") {
							ForEach(Data.contacts) { contact in
								NAriaContactCard_1(contact: contact)
							}
						}
					}
				} tabItem: {
					Label("Bugs",systemImage: "exclamationmark.triangle")
				}
			}
		}.navigationTitle("WCAG 1.3.1")
	}
}

#Preview {
	WCAG131()
}
