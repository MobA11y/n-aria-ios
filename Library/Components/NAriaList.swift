//
//  NAriaList.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaList<Content:View> : View {
	
	@ViewBuilder var content: () -> Content
	
	var body: some View {
		List(content: content)
	}
}

#Preview {
	NAriaList {
		
		NAriaSection(header: "A Section") {
					
			NAriaListIcon(image: "Icon-TextField", label: "Text Field")
		}
	}
}
