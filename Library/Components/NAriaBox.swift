//
//  NAriaBox.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/7/24.
//

import SwiftUI

struct NAriaBox<Content:View> : View {
	
	@ViewBuilder var content: () -> Content
	
	var cornerRadius = 8.0
	
	var lineWidth = 4.0
	
	var body: some View {
		ZStack(content:content)
			.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			.frame(maxWidth: .infinity)
			.overlay(
				RoundedRectangle(cornerRadius: cornerRadius)
					.stroke(Color.brandAccentColor, lineWidth: lineWidth)
			)
	}
}
