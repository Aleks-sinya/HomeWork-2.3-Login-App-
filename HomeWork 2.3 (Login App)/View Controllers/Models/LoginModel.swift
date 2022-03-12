//
//  LoginModel.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 11.03.2022.
//

import Foundation

struct LoginModel {
    let login: String
    let password: String
}

extension LoginModel {
    static func getLogin() -> [LoginModel] {
        return [LoginModel(login: "User", password: "Password")]
    }
}
