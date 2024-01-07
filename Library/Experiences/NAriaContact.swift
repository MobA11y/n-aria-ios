//
//  NAriaMasterDetail.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaContact : View {
	
	let contact:Contact
	
	var body: some View {
		NAriaMasterDetail {
			NAriaContactCard(contact: contact)
		} detail: {
			NAriaContactProfile(contact:contact)
		}.accessibilityIdentifier(contact.name)
	}
}
