//
//  NAriaTab.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/6/24.
//

import SwiftUI

struct NAriaTab<Content:View, Tab:View>: View {
		
	@ViewBuilder var content: () -> Content
	
	@ViewBuilder var tabItem: () -> Tab
	
	var body: some View {
		
		ZStack(content:content).tabItem {
			ZStack(content:tabItem)
		}
	}
}

#Preview {
	NAriaContacts(list:Data.contacts)
}
