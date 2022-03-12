//
//  LoginModel.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 12.03.2022.
//

import Foundation

struct LoginModel {
    let login: String
    let password: String
    let fullName: String
    
    
    static func getLogin() -> LoginModel {
        LoginModel(
            login: "User",
            password: "Password",
            fullName: "Aleksei Siniagovskii"
        )
    }
}
