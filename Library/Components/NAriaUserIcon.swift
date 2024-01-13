//
//  NAriaIcon.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/23/23.
//

import SwiftUI

struct NAriaUserIcon: View {
	
	var user: User
	
	@ScaledMetric(wrappedValue: 20, relativeTo: .body) var size
	
	var body: some View {
		ZStack {
			
			AsyncImage(url: URL(string:user.picture)) { image in
				
				NAriaIcon(shouldAutoLayout: false) {
					image
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: size, height: size, alignment: .center)
						.clipShape(.circle).padding()
				} label: {
					Text(user.name)
				}

				
			} placeholder: {
				Text("Loading...")
			}
		}
	}
}

