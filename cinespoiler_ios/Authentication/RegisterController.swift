//
//  RegisterController.swift
//  cinespoiler_ios
//
//  Created by DAMII on 30/11/24.
//

import UIKit
import FirebaseAuth

class RegisterController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func goToPush(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func configureAlert(){
        let alertController = UIAlertController(title: "Mensaje de error", message: "Email o contraseña incorrectos", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func registerWithFirebase(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password){
            [weak self] authResult, error in
            guard let self = self else {return}
            if error != nil {
                self.configureAlert()
            }else{
                self.goToPush()
            }
        }
    }
}
