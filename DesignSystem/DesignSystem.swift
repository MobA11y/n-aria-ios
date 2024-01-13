import SwiftUI

struct DesignSystem: View {
		
	var body: some View {
		
		NAriaList {
			
			NAriaSection(header: "Components") {

				NAriaNavigationLink {
					NAriaListIcon(image: "person.text.rectangle", label: "NAriaContactCard")
				} destination: {
					NAriaContactCard(contact: Data.contacts.first!).navigationTitle("NAriaContactCard")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "button.horizontal", label: "NAriaCTA")
				} destination: {
					NAriaCTA(label: "ClickMe") { }.navigationTitle("NAriaCTA")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "button.programmable.square", label: "NAriaIcon")
				} destination: {
					NAriaIcon {
						Image(systemName: "person")
					} label: {
						Text("Person")
					}.navigationTitle("NAriaIcon")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "list.dash", label: "NAriaList")
				} destination: {
					NAriaList {
						NAriaSection(header: "A Section") {
							NAriaListIcon(image: "Icon-TextField", label: "Text Field")
						}
					}.navigationTitle("NAriaList")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "text.line.first.and.arrowtriangle.forward", label: "NAriaListItem")
				} destination: {
					NAriaListIcon(image: "character.textbox", label: "NAriaList").navigationTitle("NAriaListItem")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "person.crop.circle", label: "NAriaProfile")
				} destination: {
					NAriaProfile(contact: Data.contacts.first!).navigationTitle("NAriaProfile")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "text.line.last.and.arrowtriangle.forward", label: "NAriaSection")
				} destination: {
					NAriaList {
						NAriaSection(header: "A Section") {
							NAriaListIcon(image: "Icon-TextField", label: "Text Field")
						}
						
						NAriaSection(header: "Another Section") {
							NAriaListIcon(image: "Icon-TextField", label: "Text Field")
						}
					}.navigationTitle("NAriaSection")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "character.textbox", label: "NAriaTextField")
				} destination: {
					NAriaTextField(label: "Name").navigationTitle("NAriaTextField")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "bold", label: "NAriaHeadline")
				} destination: {
					NAriaHeadline(text: "N-ARIA Rocks").navigationTitle("NAriaHeadline")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "text.append", label: "NAriaSubtitle")
				} destination: {
					NAriaSubTitle(text: "The N-ARIA Documentation Engine is cool.").navigationTitle("NAriaSubtitle")
				}
				
				NAriaNavigationLink {
					NAriaListIcon(image: "square.on.square.squareshape.controlhandles", label: "NAriaBox")
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
					NAriaPerson().navigationTitle("NAriaPerson")
				}
			}
		}.navigationTitle("Design")
	}
}

#Preview {
	ZStack {
		DesignSystem()
	}
}
