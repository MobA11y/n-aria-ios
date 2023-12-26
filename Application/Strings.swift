//
//  Strings.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//
import Foundation

struct Strings {
	
	static func appName() -> String {
		return NSLocalizedString("AppName", comment: "The name of the application.")
	}
	
	static func componentsHeader() -> String {
		return NSLocalizedString("Components", comment: "The header of the Naria components section.")
	}
	
	static func demosHeader() -> String {
		return NSLocalizedString("Experiences", comment: "The header of the experiences section.")
	}
	
	static func profileIconDescription() -> String {
		return NSLocalizedString(
			"Profile", comment: "Description of the image in a proifle icon."
		)
	}
}
