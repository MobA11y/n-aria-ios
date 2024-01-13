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
						
						NAriaSection(header: "Success Criteria") {
							
							NAriaSubTitle(text: "Information, structure, and relationships conveyed through presentation can be programmatically determined or are available in text.")
						}
						
						NAriaSection(header: "Demonstration") {
							ForEach(Data.contacts) { contact in
								NAriaContactCard(contact: contact)
							}
						}
						
						NAriaSection(header: "Comments") {
							NAriaCard(
								title: "VoiceOver",
								subtitle: "Information is grouped together nicely, concise, and understandable.",
								systemName: "voiceover",
								imageDescription: "VoiceOver Friendly",
								style: .emphasized
							)
							
							NAriaCard(
								title: "Dynamic Type",
								subtitle: "Views re-arrange themselves for accessibility sized text preserving as much structure as the content allows.",
								systemName: "textformat.size",
								imageDescription: "Dynamic Type Friendly",
								style: .emphasized
							)
						}
					}
				} tabItem: {
					Label("Fixes",systemImage: "accessibility").accessibilityIdentifier("wcag_1_3_1")
				}
				
				NAriaTab {
					
					NAriaList {
						
						NAriaSection(header: "Success Criteria") {
							
							NAriaSubTitle(text: "Information, structure, and relationships conveyed through presentation can be programmatically determined or are available in text.")
						}
							
						NAriaSection(header: "Demonstration") {
							ForEach(Data.contacts) { contact in
								NAriaContactCard_1(contact: contact)
							}
						}
						
						NAriaSection(header: "Comments") {
							NAriaCard(
								title: "VoiceOver",
								subtitle: "Information is not grouped together. Multiple swipes needed to access trivial information. Structure not communicated.",
								systemName: "exclamationmark.questionmark",
								imageDescription: "VoiceOver Friendly",
								style: .error
							)
							
							NAriaCard(
								title: "Dynamic Type",
								subtitle: "Text starts to feel cramped around Large font size. Accessibility sized text breaks layout and structural meaning.",
								systemName: "exclamationmark.questionmark",
								imageDescription: "Violation",
								style: .error
							)
						}
					}
					
				} tabItem: {
					Label("Bugs", systemImage: "exclamationmark.triangle")
						.accessibilityIdentifier("wcag_1_3_1-bugs")
				}
				
			}
		}.navigationTitle("WCAG 1.3.1")
	}
}

#Preview {
	WCAG131()
}
