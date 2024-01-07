//
//  NAriaIcon.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/23/23.
//

import SwiftUI

struct NAriaProfileIcon: View {
	
	var image: String
				
	@ScaledMetric(wrappedValue: 50, relativeTo: .body) var size
	
	var body: some View {
		
		Image(image)
			.resizable()
			.aspectRatio(contentMode: .fill)
			.frame(width: size, height: size, alignment: .center)
			.clipShape(.circle)
			.accessibilityLabel(
				Strings.profileIconDescription()
			)
	}
}

#Preview {
	
	VStack{
		NAriaProfileIcon(image: "Chris")
	}
}
