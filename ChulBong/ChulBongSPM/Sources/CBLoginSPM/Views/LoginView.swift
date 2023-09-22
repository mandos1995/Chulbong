//
//  LoginView.swift
//
//
//  Created by 김민석 on 2023/09/22.
//

import SwiftUI
import AuthenticationServices

public struct LoginView: View {
    
    public init() { }
    
    public var body: some View {
        Text("로그인")
            .font(.title)
            .onTapGesture {
                showAppleLogin()
            }
    }
    
    private func showAppleLogin() {
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.email, .fullName]
        let controller = ASAuthorizationController(authorizationRequests: [request])
        controller.performRequests()
    }
}
