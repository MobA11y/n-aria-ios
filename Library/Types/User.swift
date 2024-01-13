//
//  User.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/13/24.
//

import Foundation
import JWTDecode

class User : ObservableObject {
	let id: String
	let name: String
	let email: String
	let emailVerified: String
	let picture: String
	let updatedAt: String
	let authenticated: AuthState
	
	init() {
		self.authenticated = .none
		self.id = ""
		self.name = ""
		self.email = ""
		self.emailVerified = ""
		self.picture = ""
		self.updatedAt = ""
	}
	
	init?(from idToken: String) {
		guard let jwt = try? decode(jwt: idToken),
					let id = jwt.subject,
					let name = jwt["name"].string,
					let email = jwt["email"].string,
					let emailVerified = jwt["email_verified"].boolean,
					let picture = jwt["picture"].string,
					let updatedAt = jwt["updated_at"].string else {
			return nil
		}
		self.authenticated = .authenticated
		self.id = id
		self.name = name
		self.email = email
		self.emailVerified = String(describing: emailVerified)
		self.picture = picture
		self.updatedAt = updatedAt
	}
}

