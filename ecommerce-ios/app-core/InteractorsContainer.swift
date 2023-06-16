//
//  InteractorsContainer.swift
//  ecommerce-ios
//
//  Created by Kelvin Prayitno on 16/06/23.
//

import Foundation

extension DIContainer {
    struct Interactors {
        let userPermissionsInteractor: UserPermissionsInteractor
    
        
        static var stub: Self {
            .init(
//                countriesInteractor: StubCountriesInteractor(),
//                  imagesInteractor: StubImagesInteractor(),
                  userPermissionsInteractor: StubUserPermissionsInteractor())
        }
    }
}
