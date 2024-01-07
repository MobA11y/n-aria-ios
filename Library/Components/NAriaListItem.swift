//
//  NAriaIcon.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/23/23.
//

import SwiftUI

struct NAriaListItem: View {
	
	var image: String
	
	var label: String
		
	var imageDescription: String = ""
	
	var shouldAutoLayout = false
	
	func identifier() -> String {
		return label.lowercased()
			.trimmingCharacters(in: .whitespaces)
			.replacingOccurrences(of: " ", with: "-")
	}
	
	@ScaledMetric(wrappedValue: 20, relativeTo: .body) var size
	
	var body: some View {
		
		HStack(alignment: .center) {
			
			NAriaIcon(shouldAutoLayout: shouldAutoLayout) {
				
				Image(systemName: image).resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: size, height: size, alignment: .center)
					.accessibilityLabel(imageDescription)
				
			} label: {
				
				Text(label).font(.body)
					.accessibilityIdentifier(identifier())
				
			}
		}
	}
}

#Preview {
	
	VStack{
		NAriaListItem(image: "character.textbox", label:"TextField")
	}
}
