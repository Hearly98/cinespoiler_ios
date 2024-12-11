//
//  HomeViewController.swift
//  cinespoiler_ios
//
//  Created by Hearly Sebastian on 9/12/24.
//

import UIKit
import FirebaseAuth
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func getUser(){
        let _ = Auth.auth().currentUser?.email
    }
    func logOut(){
        try? Auth.auth().signOut()
        self.dismiss(animated: true, completion: nil)
        print("Cerrar sesion con exito")
    }
    
    @IBAction func didTapClose(_ sender: UIButton) {
        logOut()
    }
}
