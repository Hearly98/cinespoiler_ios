//
//  LoginController.swift
//  cinespoiler_ios
//
//  Created by DAMII on 30/11/24.
//

import UIKit
import FirebaseAuth

class LoginController:UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUser()
    }
    
    @IBAction func loginBtn(_ sender: UIButton) {
        loginUser()
        }
    
    func goToPush(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        let viewController = storyBoard.instantiateViewController(withIdentifier: "") as? HomeViewController
        viewController?.modalPresentationStyle = .overFullScreen
        self.present(viewController ?? ViewController(), animated: true, completion: nil)
    }
    
    func getUser(){
        let _ = Auth.auth().addStateDidChangeListener{auth, user in
            if user == nil {
                print("error al logearse")
            }else {
                self.goToPush()
            }}
    }
    func configureAlert(){
        let alertController = UIAlertController(title: "Mensaje de error", message: "Email o contraseña incorrectos", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
    }
    func loginWithFirebase(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password){
            [weak self] authResult, error in
            guard let self = self else {return}
            if error != nil {
                self.configureAlert()
            }else {
                self.goToPush()
            }
        }
    }
    
    
    func loginUser(){
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        loginWithFirebase(email: email, password: password)
    }
    //(\)
}
