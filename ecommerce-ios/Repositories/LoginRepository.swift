//
//  ImageWebRepository.swift
//  ecommerce-ios
//
//  Created by Kelvin Prayitno on 31/05/23.
//

import Combine
import UIKit

protocol LoginRepository: WebRepository {
    func login() -> AnyPublisher<LoginResponse, Error>
}

struct LoginRepositoryImpl : LoginRepository {
    
    let session: URLSession
    let baseURL: String
    let bgQueue = DispatchQueue(label: "bg_parse_queue")
    
    init(session: URLSession, baseURL: String) {
        self.session = session
        self.baseURL = baseURL
    }
    
    func login() -> AnyPublisher<LoginResponse, Error> {
        return call(endpoint: API.loginPath)
    }
}

// MARK: - Endpoints

extension LoginRepositoryImpl {
    enum API {
        case loginPath
    }
}

extension LoginRepositoryImpl.API: APICall {
    var method: String {
        switch self {
        case .loginPath:
            return "GET"
        }
    }
    
    var headers: [String : String]? {
        return ["Accept": "application/json"]
    }
    
    func body() throws -> Data? {
        return nil
    }
    
    var path: String {
        switch self {
        case .loginPath:
            return "/auth/login"
        }
    }
}
