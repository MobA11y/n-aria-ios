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
	
	var iconColor = Color.brandAccent
	
	var arrowColor = Color.brandAccent

	var body: some View {
		
		NavigationLink(
			destination: destination,
			label: label
		).foregroundStyle(iconColor, Color.brandAccent)
	}
}
