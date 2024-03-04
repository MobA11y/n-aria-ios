//
//  NAriaPagerInactive.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 2/27/24.
//

import SwiftUI

struct NAriaPager_1: View {
	
	var isActive:Bool = true
	
	@State var page = 0
	
	var body: some View {
		TabView {
			
			switch page {
			case 0:
				Text("Hi")
			case 1:
				Text("Hi Again")
			case 2:
				Text("Hi one more time")
			default:
				Text("Error")
			}
		
		}.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
			.id(page)
		
		NAriaPageIndicator(
			currentPage: $page,
			numberOfPages: 3
		).accessibilityAdjustableAction{(direction) -> Void in //This is the line of code that matters.
			return
		}
	}
}

struct NAriaPageIndicator: UIViewRepresentable {
	@Binding var currentPage: Int
		var numberOfPages: Int
		
		func makeCoordinator() -> Coordinator {
				return Coordinator(currentPage: $currentPage)
		}
		
		func makeUIView(context: Context) -> UIPageControl {
				let control = UIPageControl()
				control.numberOfPages = 1
			control.setIndicatorImage(UIImage(systemName: "location.fill"), forPage: currentPage)
				control.pageIndicatorTintColor = UIColor(.primary)
				control.currentPageIndicatorTintColor = UIColor(.accentColor)
				control.translatesAutoresizingMaskIntoConstraints = false
				control.setContentHuggingPriority(.required, for: .horizontal)
				control.addTarget(
						context.coordinator,
						action: #selector(Coordinator.pageControlDidFire(_:)),
						for: .valueChanged
				)
			
			control.accessibilityTraits = .none
				return control
		}
		
		func updateUIView(_ control: UIPageControl, context: Context) {
				context.coordinator.currentPage = $currentPage
				control.numberOfPages = numberOfPages
				control.currentPage = currentPage
		}
	
		class Coordinator {
				var currentPage: Binding<Int>
				
				init(currentPage: Binding<Int>) {
						self.currentPage = currentPage
				}
				
				@objc
				func pageControlDidFire(_ control: UIPageControl) {
						currentPage.wrappedValue = control.currentPage
				}
		}
}

#Preview {
	NAriaPager_1()
}
