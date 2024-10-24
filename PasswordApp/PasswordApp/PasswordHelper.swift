//
//  PasswordHelper.swift
//  PasswordApp
//
//  Created by Tihomir Radev on 7.08.24.
//

import Foundation

class PasswordHelper {
    
    static func createPassword(password: String) {
        UserDefaults.standard.set(password, forKey: "password")
    }
    
    static func loadPassword() -> String {
        let password = UserDefaults.standard.object(forKey: "password") as? String ?? ""
        return password
    }
    
    static func passwordExists() -> Bool {
        let password = loadPassword()
        return !password.isEmpty
    }
}
