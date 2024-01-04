//
//  NavigationLinkStyle.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NavigationLinkStyle : ButtonStyle {
	
	func makeBody(configuration: Configuration) -> some View {
					configuration.label
							.padding()
							.clipShape(Capsule())
			}
}
