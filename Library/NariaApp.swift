//
//  NariaApp.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/2/24.
//

import SwiftUI

struct NAriaApp<Content: View> : View {
	
	@EnvironmentObject var navigation: Nav

	/**
	 The navigation title.
	 */
	let title: String
	
	@ViewBuilder var content: () -> Content
	
	var body: some View {
		
		NavigationStack(path:$navigation.path) {
			ZStack(content:content)
				.navigationTitle(title)
				.navigationBarTitleDisplayMode(.inline)
			Spacer()
		}
	}
}
