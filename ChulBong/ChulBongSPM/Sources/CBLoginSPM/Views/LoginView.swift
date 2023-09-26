//
//  LoginView.swift
//
//
//  Created by 김민석 on 2023/09/22.
//

import SwiftUI
import AuthenticationServices
import CryptoKit

import FirebaseAuth

public struct LoginView: View {
    @Environment(\.window) var window: UIWindow?
    @State private var appleLoginCoordinator: AppleAuthCoordinator?
    
    public init() { }
    
    public var body: some View {
        Text("로그인")
            .font(.title)
            .onTapGesture {
                showAppleLogin()
            }
    }
    
    private func showAppleLogin() {
        appleLoginCoordinator = AppleAuthCoordinator(window: window)
        appleLoginCoordinator?.startAppleLogin()
    }
}
