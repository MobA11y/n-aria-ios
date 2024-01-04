//
//  NAriaMasterDetail.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import SwiftUI

struct NAriaMasterDetail<Master:View, Detail:View> : View {
	
	var master: () -> Master
	
	var detail: () -> Detail
		
	var body: some View {
		NAriaNavigationLink(label: master, destination: detail)
	}
}


#Preview {
	NAriaMasterDetail {
		Text("Master")
	} detail: {
		Text("Detail")
	}
}
