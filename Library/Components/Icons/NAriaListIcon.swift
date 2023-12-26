//
//  NAriaIcon.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/23/23.
//

import SwiftUI

struct NAriaListIcon: View {
	
	var image: String
	
	var label: String
		
	var imageDescription: String = ""
	
	var shouldAutoLayout = false
	
	@ScaledMetric(wrappedValue: 20, relativeTo: .body) var size
	
	var body: some View {
		
		HStack(alignment: .center) {
			
			NAriaIcon(shouldAutoLayout: shouldAutoLayout) {
				Image(image)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: size, height: size, alignment: .center)
					.accessibilityLabel(imageDescription)
			} label: {
				Text(label).font(.body)
			}
		}
	}
}

#Preview {
	
	VStack{
		NAriaListIcon(image: "Icon-TextField", label:"TextField")
		NAriaListIcon(image: "Icon-TextField", label:"")
	}
}
