//
//  ContactsListDemo.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import SwiftUI

struct NAriaContacts: View {
	
	var list:[Contact]
		
	@FocusState var focusState: Bool
	
	var body: some View {
		
		VStack {
			NariaTabView {
				ContactsListPatterns()
				ContactsListBugs()
			}
		}.navigationTitle("Contacts")
	}
}

struct ContactsListDemoPreview: PreviewProvider {
	static var previews: some View {
		NAriaContacts(list: Data.contacts)
	}
}

struct ContactsListPatterns: View {
	
	var body: some View {
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
				.accessibilityIdentifier("contacts")
		}
	}
}

struct ContactsListBugs : View {
	
	var body: some View {
		
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
}
