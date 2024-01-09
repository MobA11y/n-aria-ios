//
//  NAriaEmphasized.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/8/24.
//

import SwiftUI

enum NAriaEmphasisStyles: String, CaseIterable, Hashable {
	
	case error = "Error"
	case emphasized = "Emphasized"
	case active = "Active"
	
	static func getStyleAsView(_ destination: NAriaEmphasisStyles) -> AnyView {
		
		switch destination {
		case .error: return AnyView(NAriaStyleViewError())
		case .active: return AnyView(NAriaStyleViewActive())
		case .emphasized:return AnyView(NAriaStyleViewEmphasized())
		}
	}
}

struct NAriaStyleViewActive: View {
	var body: some View {
		RoundedRectangle(cornerRadius: 10)
			.fill(Color.brandActiveColor)
			.stroke(Color.brandAccentColor, lineWidth: 4)
			.background(Color.white)
	}
}

struct NAriaStyleViewEmphasized: View {
	var body: some View {
		RoundedRectangle(cornerRadius: 10)
			.fill(Color.white)
			.stroke(Color.brandAccentColor, lineWidth: 4)
			.background(Color.white)
	}
}

struct NAriaStyleViewError: View {
	var body: some View {
		RoundedRectangle(cornerRadius: 10)
			.fill(Color.white)
			.stroke(Color.errorColor, style: StrokeStyle(lineWidth: 4, dash:[10]))
			.background(Color.white)
	}
}
