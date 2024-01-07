//
//  Data.swift
//  NARIA
//
//  Created by Chris McMeeking on 12/24/23.
//

import Foundation

struct Data {
	
	static let contacts: [Contact] = [
		.init(
			name: NSLocalizedString("Chris-Name", comment: ""),
			affiliation: NSLocalizedString("Chris-Affiliation", comment: ""),
			title: NSLocalizedString("Chris-Title", comment: ""),
			comment: NSLocalizedString("Chris-Comment", comment: ""),
			details: NSLocalizedString("Chris-Details", comment: ""),
			profileImage: "Chris",
			profileImageDescription: NSLocalizedString("Chris-ImageDescription", comment: "")
		),
		.init(
			name: NSLocalizedString("MobA11y-Name", comment: ""),
			affiliation: NSLocalizedString("MobA11y-Affiliation", comment: ""),
			title: NSLocalizedString("MobA11y-Title", comment: ""),
			comment: NSLocalizedString("MobA11y-Comment", comment: ""),
			details: NSLocalizedString("MobA11y-Details", comment: ""),
			profileImage: "MobA11y",
			profileImageDescription: NSLocalizedString("MobA11y-ImageDescription", comment: "")
		)
	]
	
}
