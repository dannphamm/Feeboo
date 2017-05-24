//
//  ViewController.swift
//  FeeBoo
//
//  Created by Dung Pham on 5/23/17.
//  Copyright © 2017 Dung Pham. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import FirebaseDatabase
import FirebaseStorage

class ViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginTapped(_ sender: Any) {
    
     Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (User, error) in
         print ("we tried to sign in")
        if error != nil {
            print("we have an error:\(String(describing: error))")
        } else{
            print("sign in sucessfully")
        }
        }
    }

}

