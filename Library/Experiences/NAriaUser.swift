//
//  NAriaUser.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/13/24.
//

import SwiftUI

struct NAriaUser: View {
	
	@Binding var user: User
	
	var body: some View {
		switch user.authenticated {
		case .authenticated: NAriaUserIcon(user: user)
		default:NAriaLoginButton(user:$user).accessibilityIdentifier("/api/auth/login")
		}
	}
}
