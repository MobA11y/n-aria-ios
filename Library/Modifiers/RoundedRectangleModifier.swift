//
//  RoundedRectangleModifier.swift
//  NARIA
//
//  Created by Games on 12/12/23.
//

import SwiftUI

struct RoundedRectangleModifier: ViewModifier {
	
	// API
	var isDashed: Bool = false
	
	// Defaults for these makes great design discussions!
	var cornerRadius = 10.0
	
	var borderColor = Color.primary
	
	var padding = 6.0
	
	var strokeDashed = StrokeStyle(lineWidth: 2.0, dash: [10])
	
	var strokeSolid = StrokeStyle(lineWidth: 2.0)
	
	// Implementation
	func body(content: Content) -> some View {
		
		let strokeStyle = isDashed ? strokeDashed : strokeSolid
		
		content
			.padding(padding)
			.overlay(
				RoundedRectangle(cornerRadius: cornerRadius)
					.stroke(borderColor, style: strokeStyle)
			)
	}
}
