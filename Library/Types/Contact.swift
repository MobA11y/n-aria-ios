//
//  NAriaPerson.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/21/23.
//

import Foundation

struct Contact: Identifiable {
	var id = UUID()
	var name: String
	var affiliation: String
	var title = ""
	var comment: String
	var details: String
	var profileImage: String
	var profileImageDescription:String
}
