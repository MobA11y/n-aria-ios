//
//  NAriaLoginButton.swift
//  N-ARIA
//
//  Created by Chris McMeeking on 1/12/24.
//
import Auth0
import SwiftUI

enum AuthState {
	case none
	case inProgress
	case authenticated
	case error
}

struct NAriaLoginButton: View {
	
	@Binding var user: User
	
	let buttonText = "Login/Sign Up"
	
	let authenticatingText = "Authenticating..."
	
	let successText = "Success"
	
	let errorText = "Error"
	
	@State var authState = AuthState.none
	
	@State var message = ""
	
	func getLabel() -> String {
		
		switch authState {
		case .none: return buttonText
		case .error: return errorText
		case .inProgress: return authenticatingText
		case .authenticated: return successText
		}
	}
		
	var body: some View {
				
		switch (user.authenticated) {
		case .authenticated: Text(user.picture)
		case .none:
			NAriaCTA(label: getLabel()) {
				Auth0
					.webAuth()
					.start { result in
						switch result {
						case .success(let credentials):
							authState = .authenticated
							user = User(from:credentials.idToken) ?? User()
							print("\(self.user.picture)")
							message = (credentials.scope != nil) ? credentials.scope! : "Hi"
						case .failure(let error):
							authState = .error
							message = error.localizedDescription
						}
					}
			}.padding()
		default: Text(user.email)
		}
		
	}
}
