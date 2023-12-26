//
//  NAriaNavigationList.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaNav<Content: View> : View {
	
	/**
	 The navigation title.
	 */
	let title: String
	
	@ViewBuilder var content: () -> Content
	
	var body: some View {
		NavigationStack {
			List(content:content)
				.navigationTitle(title)
				.navigationBarTitleDisplayMode(.inline)
		}
	}

}

#Preview{
	NAriaNav(title: Strings.appName()) {
		
		@ScaledMetric(relativeTo:.headline) var size = 40

		NAriaSection(
			header: Strings.componentsHeader()
		) {
			NAriaNavItem {
				NAriaListIcon(image: "Icon-TextField", label: "Text Field")
			} destination: {
				SimpleForm()
			}
		}
	}
}
