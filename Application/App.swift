//
//  NARIAApp.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/12/23.
//

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
		
	var body: some View {
		
		NAriaApplication(title: "N-ARIA") {
			
			ScrollView{
				
				VStack {
					
					NAriaSubTitle(text: "Don't add miscommunication to your list of barriers in creating accessible iOS content. Have your teams explore N-ARIA Design Systen Documentation for 5 minutes instead.").padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Learn")
							NAriaSubTitle(text:"Presents select N-ARIA Design System Components and explains the related WCAG principles.")
							NAriaCTA(label: "iOS Accessibility Guidelines") {
								NAriaFlow.shared.navigateTo(.guidelines)
							}.padding()
						}
					}.padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Explore")
							NAriaSubTitle(text:"The entire N-ARIA Design System by component. Useful for agreeing about how a component should implemented!")
							NAriaCTA(label: "N-ARIA Design System") {
								NAriaFlow.shared.navigateTo(.patterns)
							}.padding()
						}
					}.padding()
					
					NAriaBox {
						
						VStack {
							NAriaHeadline(text:"Share")
							NAriaSubTitle(text:"Sometimes having a collection of anti patterns to explore is useful! Let us know if you think you have found one worth adding. @MobA11y")
							NAriaCTA(label: "Collection of Antipatterns") {
								NAriaFlow.shared.navigateTo(.antipatterns)
							}.padding()
						}
					}.padding()
				}.navigationDestination(for:Collections.self) { destination in
					Collections.setViewForDestination(destination)
				}
			}
		}.environmentObject(NAriaFlow.shared)
	}
}

struct NAriaBox<Content:View> : View {
	
	@ViewBuilder var content: () -> Content
	
	var cornerRadius = 8.0
	
	var lineWidth = 4.0
	
	var body: some View {
		ZStack(content:content)
			.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			.frame(maxWidth: .infinity)
			.overlay(
				RoundedRectangle(cornerRadius: cornerRadius)
					.stroke(Color.brandAccentColor, lineWidth: lineWidth)
			)
	}
}

struct NAriaHeadline: View {
	
	var text: String
	
	var body: some View {
		Text(text).font(.title2)
			.padding(EdgeInsets(top: 0, leading: 0, bottom: 4, trailing: 0))
	}
}

struct NAriaSubTitle: View {
	
	var text: String
	
	var body: some View {
		Text(text).font(.body)
			.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
	}
}

#Preview {
	ZStack {
		MainContent()
	}
}
