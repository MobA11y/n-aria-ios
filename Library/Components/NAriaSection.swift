//
//  NAriaSection.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaSection<Content: View> : View {
	
	var header: String
	
	@ViewBuilder var content: () -> Content
	
	var body: some View {
		Section(
			content: content,
			header: {
				Text(header).font(.headline)
			}
		).headerProminence(.increased)
	}
}
