//
//  NAriaImage.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/8/24.
//

import SwiftUI

struct NAriaImageIcon: View {
	
	var image:String
	
	var imageLabel:String
	
	var text:String
	
	@ScaledMetric(wrappedValue: 40, relativeTo: .body) var size

	var body: some View {
		
		NAriaIcon {
			Image(image).resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: size, height: size, alignment: .center)
				.clipShape(.circle)
		} label: {
			Text(text).font(.subheadline)
		}
		
	}
}

#Preview {
	NAriaImageIcon(
		image:"Chris",
		imageLabel: "Doesn't matter",
		text:"Hi there"
	)
}
