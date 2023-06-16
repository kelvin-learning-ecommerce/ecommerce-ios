//
//  LoginInteractor.swift
//  ecommerce-ios
//
//  Created by Kelvin Prayitno on 16/06/23.
//

import Combine
import Foundation
import SwiftUI

protocol LoginInteractor {
    func login() -> AnyPublisher<LoginResponse, Error>
}

struct LoginInteractorImpl: LoginInteractor {
    
    
    let loginRepository: LoginRepository
    let appState: Store<AppState>
    
    init(loginRepository: LoginRepository, appState: Store<AppState>) {
        self.loginRepository = loginRepository
        self.appState = appState
    }
    
    func login() -> AnyPublisher<LoginResponse, Error> {
        return loginRepository
            .login()
            .ensureTimeSpan(requestHoldBackTimeInterval)
        //            .flatMap { [dbRepository] in
        //                dbRepository.store(countries: $0)
        //            }
            .eraseToAnyPublisher()
    }
    
    private var requestHoldBackTimeInterval: TimeInterval {
        return ProcessInfo.processInfo.isRunningTests ? 0 : 0.5
    }
}

struct StubLoginInteractor: LoginInteractor {
    func login() -> AnyPublisher<LoginResponse, Error> {
        
    }
}
