//
//  NAriaTabView.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/3/24.
//

import SwiftUI

struct NariaTabView<Content : View>: View {

	@ViewBuilder var content: () -> Content

	var body: some View {
		
		ZStack {
			TabView(content: content)
		}
	}
}
