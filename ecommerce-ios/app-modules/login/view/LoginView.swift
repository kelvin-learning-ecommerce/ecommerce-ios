//
//  LoginView.swift
//  ecommerce-ios
//
//  Created by Kelvin Prayitno on 29/05/23.
//


let scan_qr_ic = "scan_qr_ic"

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack{
            NavigationStack {
                List {
                    ForEach(menuList) { menu in
                        Text(menu.menu)
                    }
                }.navigationTitle("Menu")
            }
            Image(scan_qr_ic).resizable().frame(width: 50, height: 50)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
