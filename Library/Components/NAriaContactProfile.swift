//
//  NAriaProfile.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import SwiftUI

struct NAriaContactProfile: View {
	
	var contact: Contact
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		ScrollView {
			
			VStack(spacing:10) {
				
				NAriaProfileIcon(image: contact.profileImage)
					.accessibilityLabel(contact.profileImageDescription)
				
				Text(contact.name).font(.headline)
					.multilineTextAlignment(.center)
				
				Text(contact.title)
				
				Text(contact.affiliation)
				
				Text(contact.comment).font(.subheadline)
					.multilineTextAlignment(.center)
				
				HStack {
					Text(contact.details).font(.caption).padding(10)
					
					Spacer()
				}
				
				Spacer()
			}
		}
	}
}

#Preview {
	NAriaContactProfile(
		contact: Contact(
			name: "Chris McMeeking",
			affiliation: "ASK Interfaces",
			title:"CTO",
			comment:"Assistive Technology Inventor",
			details: NSLocalizedString("Chris-Details", comment: ""),
			profileImage: "Chris",
			profileImageDescription: NSLocalizedString("Chris-ImageDescription", comment: "")
		)
	)
}
