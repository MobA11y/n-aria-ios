//
//  NAriaIcon.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/23/23.
//

import SwiftUI

struct NAriaIcon<Icon:View, Label:View> : View {

	var shouldAutoLayout: Bool = true
	
	var image: () -> Icon
	
	var label: () -> Label
	
	@Environment(\.dynamicTypeSize) var dynamicTypeSize
	
	var body: some View {
		if dynamicTypeSize.isAccessibilitySize && shouldAutoLayout {
			VStack {
				ZStack(content: image)
				ZStack(content: label)
			}
		} else {
			HStack {
				ZStack(content: image)
				ZStack(content: label)
			}
		}
	}
}
