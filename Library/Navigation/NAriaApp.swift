//
//  NAriaNavigationList.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import Foundation
import SwiftUI

enum Collections: String, CaseIterable, Hashable {
	
	case guidelines = "Guidelines"
	case patterns = "Patterns"
	
	static func setViewForDestination(_ destination: Collections) -> AnyView {
		
		switch destination {
		case .guidelines: return AnyView(AccessibilityGuidelines())
		case .patterns: return AnyView(DesignSystem())
		}
	}
}

class Nav: ObservableObject {
	
	
	static let shared = Nav()
	
	@Published var path = NavigationPath()
	
	func clear() {
		path = .init()
	}
	
	func navigateHome() {
		path.removeLast(path.count)
	}
	
	func navigateBack() {
		path.removeLast()
	}
	
	func navigateTo(_ destination:Collections) {
		path.append(destination)
	}
}

#Preview{
	NAriaApp(title: Strings.appName()) {
		
		@ScaledMetric(relativeTo:.headline) var size = 40
		
		NAriaList {
			NAriaSection(
				header: Strings.componentsHeader()
			) {
				NAriaNavigationLink {
					NAriaListIcon(image: "Icon-TextField", label: "Text Field")
				} destination: {
					NAriaPerson()
				}
			}
		}
	}
}
