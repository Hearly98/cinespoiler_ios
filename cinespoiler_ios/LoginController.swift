//
//  LoginController.swift
//  cinespoiler_ios
//
//  Created by DAMII on 30/11/24.
//

import Cocoa
import FirebaseAuth

class LoginController:UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!


    @IBAction func loginBtn(_ sender: UIButton) {
        guard let email = emailTextField.text,let password = passwordTextField.text
                else print("Contraseña incorrecta")
                    return
    }
    
    
    }

//(\)

Auth.auth().signIn(withEmail: email, password: password){
    AuthDataResult, error in
    if(let error = error){
        print("Error al iniciar sesion: \(error.localizedDescription)")
    }
    
    print(AuthDataResult, "data result")
}

