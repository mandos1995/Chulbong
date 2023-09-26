//
//  LoginCore.swift
//  
//
//  Created by 김민석 on 2023/09/25.
//

import Foundation
import CBCommonSPM

import ComposableArchitecture

struct LoginCore: Reducer {
    struct State: Equatable {
        var isSuccessLogin: Bool
    }
    
    enum Action: Equatable {
        case appleLoginTapped
        case requestLogin
    }
    
    func reduce(into state: inout State, action: Action) -> Effect<Action> {
        switch action {
        case .appleLoginTapped:
            return .run { send in
                await send(.requestLogin)
            }
            
        case .requestLogin:
            // 로그인 요청 성공 시?
            state.isSuccessLogin = true
            return .none
        }
    }
    
    
}
