/**
 NAriaTextField Anti-Pattern 1
 */
import SwiftUI

struct NAriaTextField_1: View {
	
	var label: String
	
	@State var value = ""
		
	var body: some View {
		Text(label)
				.frame(maxWidth: .infinity, alignment: .leading)
		TextField("", text: $value)
				.textFieldStyle(.roundedBorder)
				.accessibilityLabel("Username")
	}
}

#Preview {
	NAriaTextField(
		label: "Name",
		isRequired: false
	)
}
