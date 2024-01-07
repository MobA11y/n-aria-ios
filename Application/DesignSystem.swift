import SwiftUI

struct DesignSystem: View {
		
	var body: some View {
		
		NAriaList {
			
			NAriaSection(header: "Components") {

				NAriaNavigationLink {
					NAriaListIcon(image: "character.textbox", label: "NAriaContactCard")
				} destination: {
					NAriaContactCard(contact: Data.contacts.first!).navigationTitle("NAriaContactCard")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "character.textbox", label: "NAriaTextField")
				} destination: {
					NAriaTextField(label: "Name").navigationTitle("NAriaTextField")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "character.textbox", label: "NAriaTextField")
				} destination: {
					NAriaTextField(label: "Name").navigationTitle("NAriaTextField")
				}
			}
			
			NAriaSection(header: Strings.demosHeader()) {
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.3", label: "NAriaContacts")
				} destination: {
					NAriaContacts(list:Data.contacts)
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "dots.and.line.vertical.and.cursorarrow.rectangle", label: "NAriaMasterDetail")
				} destination: {
					NAriaMasterDetail {
						VStack {
							NAriaBox {
								VStack {
									NAriaHeadline(text: "A Summary")
									NAriaSubTitle(text: "Maybe a subtitle.")
								}
							}
						}
					} detail: {
						VStack {
							NAriaHeadline(text: "A Summary")
							NAriaSubTitle(text: "Maybe a subtitle.")
							NAriaSubTitle(text: "And now ramble as much as you want about the topic! The user asked for these details. They want them! :)")
						}
					}
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person", label: "NAriaPerson")
				} destination: {
					NAriaPerson()
				}
			}
		}.navigationTitle("Design System")
	}
}

#Preview {
	ZStack {
		DesignSystem()
	}
}
