import SwiftUI

struct DesignSystem: View {
		
	var body: some View {
		
		NAriaList {
			
			NAriaSection(header: "Components") {

				NAriaNavigationLink {
					NAriaListItem(image: "person.text.rectangle", label: "NAriaContactCard")
				} destination: {
					NAriaContactCard(contact: Data.contacts.first!).navigationTitle("NAriaContactCard")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "button.horizontal", label: "NAriaCTA")
				} destination: {
					NAriaCTA(label: "ClickMe") { }.navigationTitle("NAriaCTA")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "button.programmable.square", label: "NAriaIcon")
				} destination: {
					NAriaIcon {
						Image(systemName: "person")
					} label: {
						Text("Person")
					}.navigationTitle("NAriaIcon")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "list.dash", label: "NAriaList")
				} destination: {
					NAriaList {
						NAriaSection(header: "A Section") {
							NAriaListItem(image: "Icon-TextField", label: "Text Field")
						}
					}.navigationTitle("NAriaList")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "text.line.first.and.arrowtriangle.forward", label: "NAriaListItem")
				} destination: {
					NAriaListItem(image: "character.textbox", label: "NAriaList").navigationTitle("NAriaListItem")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "person.crop.circle", label: "NAriaProfile")
				} destination: {
					NAriaProfile(contact: Data.contacts.first!).navigationTitle("NAriaProfile")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "text.line.last.and.arrowtriangle.forward", label: "NAriaSection")
				} destination: {
					NAriaList {
						NAriaSection(header: "A Section") {
							NAriaListItem(image: "Icon-TextField", label: "Text Field")
						}
						
						NAriaSection(header: "Another Section") {
							NAriaListItem(image: "Icon-TextField", label: "Text Field")
						}
					}.navigationTitle("NAriaSection")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "character.textbox", label: "NAriaTextField")
				} destination: {
					NAriaTextField(label: "Name").navigationTitle("NAriaTextField")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "bold", label: "NAriaHeadline")
				} destination: {
					NAriaHeadline(text: "N-ARIA Rocks").navigationTitle("NAriaHeadline")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "text.append", label: "NAriaSubtitle")
				} destination: {
					NAriaSubTitle(text: "The N-ARIA Documentation Engine is cool.").navigationTitle("NAriaSubtitle")
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "square.on.square.squareshape.controlhandles", label: "NAriaBox")
				} destination: {
					NAriaBox {
						VStack {
							NAriaHeadline(text: "N-ARIA Rocks").navigationTitle("NAriaHeadline")
							NAriaHeadline(text: "The N-ARIA Documentation Engine is cool.").navigationTitle("NAriaBox")
						}
					}
				}
			}
			
			NAriaSection(header: Strings.demosHeader()) {
				NAriaNavigationLink {
					NAriaListItem(image: "person.3", label: "NAriaContacts")
				} destination: {
					NAriaContacts(list:Data.contacts)
				}
				
				NAriaNavigationLink {
					NAriaListItem(image: "dots.and.line.vertical.and.cursorarrow.rectangle", label: "NAriaMasterDetail")
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
					NAriaListItem(image: "person", label: "NAriaPerson")
				} destination: {
					NAriaPerson().navigationTitle("NAriaPerson")
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
