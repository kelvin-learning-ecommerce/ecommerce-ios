//
//  LoginResponse.swift
//  ecommerce-ios
//
//  Created by Kelvin Prayitno on 16/06/23.
//

import Foundation

struct LoginResponse: Codable, Equatable {
    let token: String?
    
    init(token: String?) {
        self.token = token
    }
}
