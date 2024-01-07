//
//  NAriaHeadline.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/7/24.
//

import SwiftUI

struct NAriaHeadline: View {
	
	var text: String
	
	var body: some View {
		Text(text).font(.title2)
			.padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
	}
}
