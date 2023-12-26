/**
 NAriaContactCard Anti-Pattern 1
 */

import SwiftUI

struct NAriaContactCard_1 : View {
	
	let contact: Contact
	
	var body: some View {
		HStack {
			
			Image(contact.profileImage)
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 75, height: 75, alignment: .center) // These should scale.
				.clipShape(.circle)
				.accessibilityLabel(contact.name) // This duplicates name announcement.
			
			VStack(alignment: .leading) {
				Text(contact.name).font(.headline)
				Text(contact.comment).font(.subheadline)
				Text(contact.affiliation).font(.subheadline)
			}.accessibilityElement(children: .contain) // This does nothing.
				.accessibilityLabel(contact.name) // This does nothing... or bad things if interactive.
		}
	}
}
