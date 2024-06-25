//
//  NARIAApp.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/12/23.
//

import Auth0
import SwiftUI


@main struct NARIAApp: App {
	
	var body: some Scene {
		WindowGroup {
			ZStack {
				MainContent()
			}
		}
	}
}

struct MainContent: View {
	
	@State var user: User = User()
	
	var body: some View {
		
		NAriaApp(title: "N-ARIA") {
			
			NAriaList {
				
				NAriaSection(header: "Components") {
					
					NAriaNavigationLink {
						NAriaListIcon(image: "person.text.rectangle", label: "ContactCard")
					} destination: {
						NAriaContactCard(contact: Data.contacts.first!).navigationTitle("ContactCard")
					}
					
					NAriaNavigationLink {
						NAriaListIcon(image: "button.horizontal", label: "CTA")
					} destination: {
						NAriaCTA(label: "ClickMe") { }.navigationTitle("CTA")
					}
					
					NAriaNavigationLink {
						NAriaListIcon(image: "button.programmable.square", label: "Icon")
					} destination: {
						NAriaIcon {
							Image(systemName: "person")
						} label: {
							Text("Person")
						}.navigationTitle("Icon")
					}
					
					NAriaNavigationLink {
						NAriaListIcon(image: "list.dash", label: "List")
					} destination: {
						NAriaList {
							NAriaSection(header: "A Section") {
								NAriaListIcon(image: "Icon-TextField", label: "Text Field")
							}
						}.navigationTitle("List")
					}
					
					NAriaNavigationLink {
						NAriaListIcon(image: "text.line.first.and.arrowtriangle.forward", label: "ListItem")
					} destination: {
						NAriaListIcon(image: "character.textbox", label: "ListItem").navigationTitle("ListItem")
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
			}
		}.environmentObject(Nav.shared)
			.environmentObject(user)
	}
}

#Preview {
	ZStack {
		MainContent()
	}
}
