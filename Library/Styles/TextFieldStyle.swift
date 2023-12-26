//
//  TextFieldStyle.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/12/23.
//

import SwiftUI

struct TextFieldStyle: LabeledContentStyle {
  
  // API
  var name: String
  var isRequired = false
  var isValid = false
  
	// Implementation
  func makeBody(configuration: Configuration) -> some View {
    VStack(alignment: .leading, spacing: 1) {
      
      configuration.label
				.font(.callout)
				.padding(0)
      
      configuration.content
				.font(.body)
				.padding(0)
        .modifier(RoundedRectangleModifier(isDashed: isRequired && !isValid))
      
    }.accessibilityValue(isValid ? "Valid" : isRequired ? "Required" : "")
      .accessibilityInputLabels([name])
  }
}

#Preview {
	NAriaTextField(
		label: "Name",
		isRequired: false
	)
}
