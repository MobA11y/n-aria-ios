//
//  NAriaSubtitle.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/7/24.
//

import SwiftUI

struct NAriaSubTitle: View {
	
	var text: String
	
	var body: some View {
		Text(text).font(.body)
			.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
	}
}
