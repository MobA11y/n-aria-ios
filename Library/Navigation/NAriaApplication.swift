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
	case antipatterns = "Antipatterns"
	
	static func setViewForDestination(_ destination: Collections) -> AnyView {
		
		switch destination {
		case .guidelines: return AnyView(NAriaContacts(list:Data.contacts))
		case .patterns: return AnyView(DesignSystem())
		case .antipatterns: return AnyView(NAriaContacts(list:Data.contacts))
		}
	}
}

class NAriaFlow: ObservableObject {
	
	
	static let shared = NAriaFlow()
	
	@Published var path = NavigationPath()
	
	func clear() {
		path = .init()
	}
	
	func navigateBackToRoot() {
		path.removeLast(path.count)
	}
	
	func backToPrevious() {
		path.removeLast()
	}
	
	func navigateTo(_ destination:Collections) {
		path.append(destination)
	}
	
	func done() {
		path = .init()
	}
}


struct NAriaApplication<Content: View> : View {
	
	@EnvironmentObject var navigation: NAriaFlow

	/**
	 The navigation title.
	 */
	let title: String
	
	@ViewBuilder var content: () -> Content
	
	var body: some View {
		
		NavigationStack(path:$navigation.path) {
			ZStack(content:content)
				.navigationTitle(title)
				.navigationBarTitleDisplayMode(.inline)				
			Spacer()
		}
	}
}

#Preview{
	NAriaApplication(title: Strings.appName()) {
		
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
