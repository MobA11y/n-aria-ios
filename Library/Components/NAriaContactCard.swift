//
//  NAriaProfile.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import SwiftUI

struct NAriaContactCard: View {
	
	var contact: Contact
	
	var iconDescription: String = NSLocalizedString("View Profile", comment: "")
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		
		let axSize = dynamicTypeSize.isAccessibilitySize
		
		let textAlign = axSize ? TextAlignment.center : TextAlignment.leading
		
		let alignment = axSize ? Alignment.center : Alignment.leading
		
		NAriaIcon {
			NAriaProfileIcon(image: contact.profileImage)
				.accessibilityLabel(contact.profileImageDescription)
		} label: {
			
			VStack(alignment: .leading) {
				
				Text(contact.name)
					.foregroundStyle(Color.primary)
					.font(.headline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(textAlign)
				
				Text(contact.comment)
					.foregroundStyle(Color.primary)
					.font(.subheadline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(textAlign)
				
				Text(contact.affiliation)
					.foregroundStyle(Color.primary)
					.font(.subheadline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(.center)
				
			}
		}.accessibilityElement(children: .combine)
			.accessibilityInputLabels([contact.name])
	}
}

#Preview {
	NAriaContacts(list:Data.contacts)
}
