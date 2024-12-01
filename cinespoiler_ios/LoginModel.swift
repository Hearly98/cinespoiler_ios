//
//  LoginModel.swift
//  cinespoiler_ios
//
//  Created by Hearly Sebastian on 30/11/24.
//

import Foundation

class LoginModel {
    var email: String = ""
    var password: String = ""
    
    init(email:String, password: String){
        self.email = email
        self.password = password
    }
}
