//
//  NAriaSheet.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaSheet<Sheet:View> : View {
	
	@State private var isShowingSheet = false
	
	var content: () -> Sheet
	
	var onDismiss: () -> Void
	
	var body: some View {
		
		NAriaCTA(label: "Show") {
			isShowingSheet.toggle()
		}.sheet(
			isPresented: $isShowingSheet,
			onDismiss: onDismiss
		) {
			VStack {
				
				ZStack(content: content)
				
				NAriaCTA(label: "Dismiss") {
					isShowingSheet.toggle()
				}
			}.padding(10)
		}
	}
}
