//
//  NAriaNavigationIcon.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaNavigationLink<Content: View, Destination: View> : View {
	
	@ViewBuilder var label: () -> Content
	
	@ViewBuilder var destination: () -> Destination
	
	var iconColor = Color.brandAccentColor
	
	var arrowColor = Color.brandAccentColor

	var body: some View {
		
		NavigationLink(
			destination: destination,
			label: label
		).foregroundStyle(iconColor, Color.brandAccentColor)
			.listRowBackground(
				RoundedRectangle(cornerRadius: 10)
					.fill(Color.brandActiveColor)
					.stroke(Color.brandAccentColor, lineWidth: 4)
			)
	}
}
