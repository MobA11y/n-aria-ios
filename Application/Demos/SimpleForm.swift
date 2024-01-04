//
//  ContentView.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/12/23.
//

import SwiftUI

struct SimpleForm: View {
    
  @FocusState var focusState: Bool
  
  var body: some View {
    
    VStack {
            
      Form {
        NAriaTextField(
          label: "First",
          isRequired: true
        )
        
        NAriaTextField(label:"Middle")
        
        NAriaTextField(
          label:"Last",
          isRequired: true
        )
      }
    }.navigationTitle("Simple Form")
  }
}

#Preview {
	SimpleForm()
}

struct SimpleFormAntiPatterns : View {
	var body: some View {
		
		NAriaSection(header: "Anti Patterns") {
			NAriaNavigationLink {
				NAriaListIcon(image: "Icon-TextField", label: "1.3.1 Violation")
			} destination: {
				VStack {
					
					NAriaList {
						
						NAriaSection(header: "Interactive") {
							ForEach(Data.contacts) { contact in
								NAriaContact_1(contact: contact)
							}
						}
						
						NAriaSection(header: "Informative") {
							ForEach(Data.contacts) { contact in
								NAriaContactCard_1(contact: contact)
							}
						}
					}.navigationTitle("Violation")
				}
			}
		}
	}
}
