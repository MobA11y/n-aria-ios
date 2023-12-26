//
//  NAriaNavigationIcon.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaNavItem<Content: View, Destination: View> : View {
		
	var content: () -> Content
	
	var destination: () -> Destination

	var body: some View {
		
		NavigationLink(
			destination: destination,
			label: content
		).foregroundStyle(Color.brandAccent, Color.brandAccent)
	}
}
