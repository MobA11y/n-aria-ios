//
//  NAriaProfile.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import SwiftUI

struct NAriaCard: View {
	
	var title: String
	
	var subtitle: String
	
	var systemName: String
	
	var imageDescription:String
	
	var style: NAriaEmphasisStyles = .active
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		
		let axSize = dynamicTypeSize.isAccessibilitySize
		
		let textAlign = axSize ? TextAlignment.center : TextAlignment.leading
		
		let alignment = axSize ? Alignment.center : Alignment.leading
		
		let listRowBackground = NAriaEmphasisStyles.getStyleAsView(style)
		
		NAriaIcon {
			Image(systemName: systemName).accessibilityLabel(imageDescription)
		} label: {
			
			VStack(alignment: .leading) {
				
				Text(title)
					.foregroundStyle(Color.primary)
					.font(.headline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(textAlign)				
				
				Text(subtitle)
					.foregroundStyle(Color.primary)
					.font(.subheadline)
					.frame(maxWidth: .infinity, alignment: alignment)
					.multilineTextAlignment(textAlign)
				
			}
		}.accessibilityElement(children: .combine)
			.listRowBackground(listRowBackground)
			
	}
}
