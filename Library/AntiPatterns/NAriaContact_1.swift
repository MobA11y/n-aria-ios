/**
 NAriaContact Anti-Pattern 1
 */

import SwiftUI

struct NAriaContact_1 : View {
	
	let contact:Contact
	
	var body: some View {
		NAriaMasterDetail {
			NAriaContactCard_1(contact: contact)
		} detail: {
			NAriaContactProfile(contact:contact)
		}
	}
}
