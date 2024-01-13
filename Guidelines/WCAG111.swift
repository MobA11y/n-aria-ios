//
//  WCAG111.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/8/24.
//

import SwiftUI

struct WCAG111: View {
    var body: some View {
			VStack {
				
				NariaTabView {
					
					NAriaTab {
						
						NAriaList {
							
							NAriaSection(header: "Success Criteria") {
								
								NAriaSubTitle(text: "All non-text content that is presented to the user has a text alternative that serves the equivalent purpose... (some exceptions).")
							}
							
							NAriaSection(header: "Demonstration") {
								
								NAriaImageIcon(
									image: Data.contacts.first!.profileImage,
									imageLabel:"Chris next to the volleyball court.",
									text: ""
								)
								
								NAriaImageIcon(
									image: Data.contacts.last!.profileImage,
									imageLabel:"MobA11y, Logo",
									text: ""
								)
							}
							
							NAriaSection(header: "Comments") {
								NAriaCard(
									title: "VoiceOver",
									subtitle: "Logo is labelled as a logo. Personal imagery is given a personal description.",
									systemName: "voiceover",
									imageDescription: "VoiceOver Friendly",
									style: .emphasized
								)
							}
						}
					} tabItem: {
						Label("Fixes",systemImage: "accessibility")
							.accessibilityIdentifier("wcag_1_1_1")
					}
					
					NAriaTab {
						
						NAriaList {
							
							NAriaSection(header: "Success Criteria") {
								
								NAriaSubTitle(text: "Information, structure, and relationships conveyed through presentation can be programmatically determined or are available in text.")
							}
								
							NAriaSection(header: "Demonstration") {
								
								NAriaImageIcon(
									image: Data.contacts.first!.profileImage,
									imageLabel:"",
									text: ""
								)
								
								NAriaImageIcon(
									image: Data.contacts.last!.profileImage,
									imageLabel:"",
									text: ""
								)
							}
							
							NAriaSection(header: "Comments") {
								NAriaCard(
									title: "VoiceOver",
									subtitle: "Information is not grouped together. Multiple swipes needed to access trivial information. Structure not communicated.",
									systemName: "exclamationmark.questionmark",
									imageDescription: "VoiceOver Friendly",
									style: .error
								)

							}
						}
					} tabItem: {
						Label("Bugs", systemImage: "exclamationmark.triangle").accessibilityIdentifier("wcag_1_1_1-bugs")
					}
				}
			}.navigationTitle("WCAG 1.1.1")
    }
}

#Preview {
    WCAG111()
}
