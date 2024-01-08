//
//  NAriaList.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaList<Content:View> : View {
	
	@ViewBuilder var content: () -> Content
	
	@ScaledMetric(relativeTo:.body) var spacing = 8
	
	var body: some View {
		List(content: content).listRowSpacing(spacing)
	}
}
