//
//  ContactsListDemo.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import SwiftUI

struct ContactsList: View {
	
	var contacts: [Contact] = Data.contacts
	
	@FocusState var focusState: Bool
	
	var body: some View {
		
		VStack {
			NAriaList {
				NAriaSection(header: "Interactive") {
					NAriaContact(contact: contacts.first!)
							.foregroundStyle(
								Color.primary,
								Color.accentColor
							)
				}
				
				NAriaSection(header: "Informative") {
					
					let contact = contacts.last!
					
					NAriaContactCard(
						contact: contact,
						iconDescription: contact.profileImageDescription)
							.foregroundStyle(
								Color.primary,
								Color.accentColor
							)
				}
								
				ContactsListAntiPatterns()
			}
			
		}.navigationTitle("Contacts")
	}
}

struct ContactsListDemoPreview: PreviewProvider {
	static var previews: some View {
		ContactsList()
	}
}

struct ContactsListAntiPatterns : View {
	var body: some View {
		
		NAriaSection(header: "Anti Patterns") {
			NAriaNavItem {
				NAriaListIcon(image: "Icon-TextField", label: "1.3.1 Violation")
			} destination: {
				VStack {
					
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
					}.navigationTitle("Violation")
				}
			}
		}
	}
}
