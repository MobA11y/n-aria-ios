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
			NariaTabView {
				NAriaTab {
					ContactsListPatterns()
				} tabItem: {
					Label("Patterns",systemImage: "accessibility")
				}
				NAriaTab {
					ContactsListBugs()
				} tabItem: {
					Label("Bugs",systemImage: "exclamationmark.triangle")
				}
			}
		}.navigationTitle("Contacts")
	}
}

struct NAriaTab<Content:View, Tab:View>: View {
	
	@ViewBuilder var content: () -> Content
	
	@ViewBuilder var tabItem: () -> Tab

	var body: some View {
		ZStack(content:content).tabItem {
			ZStack(content:tabItem)
		}
	}
}


struct ContactsListDemoPreview: PreviewProvider {
	static var previews: some View {
		ContactsList()
	}
}

struct ContactsListPatterns: View {
	
	var body: some View {
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
	}
}

struct ContactsListBugs : View {
	
	var body: some View {
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
	}
}
