//
//  LoginModel.swift
//  ecommerce-ios
//
//  Created by Kelvin Prayitno on 30/05/23.
//

import Foundation

var menuList: [MenuModel] = [
    MenuModel(menu: "Menu 1")]

struct MenuModel : Identifiable, Decodable{
    var id: UUID?
    
    var menu: String
}
