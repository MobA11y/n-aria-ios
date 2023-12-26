//
//  MobA11yTextField.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/12/23.
//
import SwiftUI

struct NAriaTextField: View {
  
  /**
   Represents a concept similar to the Name from WCAG's Name, Role, and Value.
   */
  var label: String
  
  /**
   The field must be filled out for its value to be valid.
   */
  var isRequired = false

  /**
   The currently entered text.
   */
  @State var value = ""

	
  @State private var isValid = false
    
  var body: some View {
      LabeledContent(label) {
        TextField("", text: $value)
          .onChange(of: value) {
            isValid = value.count > 0
          }
      }.labeledContentStyle(
        TextFieldStyle(name: label, isRequired: isRequired, isValid: isValid)
      )
  }
}

#Preview {
	NAriaTextField(
		label: "Name",
		isRequired: false
	)
}
