//
//  AccessibilityGuidelines.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/7/24.
//

import SwiftUI

struct AccessibilityGuidelines: View {
	
	var body: some View {
		
		NAriaList {
			
			NAriaSection(header: "Principles") {
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "1. Perceivable")
						
				} destination: {
					Perceivable()
				}.accessibilityIdentifier("perceivable")
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "2. Operable")
				} destination: {
					NAriaSubTitle(text: "Coming Soon.")
				}.accessibilityIdentifier("operable")
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "3. Understandable")
				} destination: {
					NAriaSubTitle(text: "Coming Soon.")
				}.accessibilityIdentifier("understandable")
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "4. Robust")
				} destination: {
					NAriaSubTitle(text: "Coming Soon.")
				}.accessibilityIdentifier("robust")
			}
		}.navigationTitle("Guidelines")
	}
}

#Preview {
	AccessibilityGuidelines()
}
