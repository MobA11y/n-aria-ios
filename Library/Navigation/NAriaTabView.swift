//
//  NAriaTabView.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/3/24.
//

import SwiftUI

struct NariaTabView<Content : View>: View {
	
	@ViewBuilder var content: () -> Content
	
	var body: some View {
		
		ZStack {
			TabView(content: content).onAppear() {
				
				let appearance = UITabBarAppearance()
				appearance.configureWithOpaqueBackground()
				appearance.backgroundColor = UIColor(Color.brandAccentColor)
				
				UITabBar.appearance().scrollEdgeAppearance = appearance
				
				let itemAppearance = UITabBarItemAppearance()

				itemAppearance.normal.iconColor = UIColor(Color.brandActiveColor)
				itemAppearance.normal.titleTextAttributes = [
					NSAttributedString.Key.foregroundColor: UIColor(Color.brandActiveColor)
				]
				
				itemAppearance.selected.iconColor = UIColor(Color.brandSecondaryColor)
				itemAppearance.selected.titleTextAttributes = [
					NSAttributedString.Key.foregroundColor: UIColor(Color.brandSecondaryColor)
				]
				
				appearance.inlineLayoutAppearance = itemAppearance
				appearance.stackedLayoutAppearance = itemAppearance
				appearance.compactInlineLayoutAppearance = itemAppearance
				
				UITabBar.appearance().standardAppearance = appearance
				UITabBar.appearance().isOpaque = true
			}
		}.toolbarColorScheme(.light, for: .tabBar)
	}
}

#Preview {
	NAriaContacts(list:Data.contacts)
}
