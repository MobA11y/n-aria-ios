//
//  NAriaCTA.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaCTA : View {
	
	var label: String
	
	var action: () -> Void
	
	var body: some View {
		ZStack {
			Button(label, action: action)
				.frame(maxWidth: .infinity)
				.padding(4)
				.background(Color.accentColor)
				.foregroundStyle(Color.background, Color.background)
				.buttonStyle(.borderedProminent)
				.clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
				
		}
	}
}

#Preview {
	NAriaCTA(label: "Click Me", action: {}).padding(10)
}
