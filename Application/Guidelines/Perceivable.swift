//
//  Perceivable.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/8/24.
//

import SwiftUI

struct Perceivable: View {
	var body: some View {
		
		NAriaList {
			
			NAriaSection(header: "1.1 - Text Alternatives") {
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "1.1.1 - Image Labels")
				} destination: {
					WCAG111()
				}
			}
			
			NAriaSection(header: "1.3 - Adaptable") {
								
				NAriaNavigationLink {
					NAriaListIcon(image: "person.3", label: "1.3.1 - Information Structure")
				} destination: {
					WCAG131()
				}
			}
		}.navigationTitle("Guidelines")

	}
}

#Preview {
	Perceivable()
}
