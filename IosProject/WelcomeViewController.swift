//
//  ViewController.swift
//  IosProject
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController{

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signupBtn(_ sender: Any)
    {
    performSegue(withIdentifier: "moveToSignUp", sender: nil)
    }
    
    @IBAction func loginBtn(_ sender: Any)
    {
         performSegue(withIdentifier: "moveToLogin", sender: nil)
    }
}

