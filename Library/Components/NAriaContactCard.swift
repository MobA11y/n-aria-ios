//
//  NAriaProfile.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import SwiftUI

struct NAriaContactCard: View {
	
	var contact: Contact
	
	var iconDescription: String = NSLocalizedString("ProfileIconDescription", comment: "")
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		
		let axSize = dynamicTypeSize.isAccessibilitySize
		
		let textAlign = axSize ? TextAlignment.center : TextAlignment.leading
		
		let alignment = axSize ? Alignment.center : Alignment.leading
		
		NAriaIcon {
			NAriaProfileIcon(image: contact.profileImage)
				.accessibilityLabel(iconDescription)
		} label: {
			
			VStack(alignment: .leading) {
				
				Text(contact.name)
					.font(.headline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(textAlign)
				
				Text(contact.comment)
					.font(.subheadline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(textAlign)
				
				Text(contact.affiliation)
					.font(.subheadline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(.center)
				
			}.accessibilityElement(children: .combine)
				.accessibilityInputLabels([contact.name, iconDescription])
		}
	}
}

#Preview {
	NAriaContactCard(
		contact: Contact(
			name: "Chris McMeeking",
			affiliation: "HAi1Y",
			comment:"SwiftUI is fun! Let's make this a little longer.",
			details: "Nope, boring!",
			profileImage: "Chris",
			profileImageDescription: NSLocalizedString("Chris-ImageDesription",comment: "")
		)
	)
}
