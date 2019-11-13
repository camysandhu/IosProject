//
//  SignUpViewController.swift
//  IosProject
//

//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    let user = UserDefaults.standard
    @IBOutlet weak var signupUsername: UITextField!
    @IBOutlet weak var signupPassword: UITextField!
    @IBOutlet weak var signupEmail: UITextField!
    @IBOutlet weak var signupAddress: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        backButton()

    }
    private func backButton()
       {
           let btnBack=UIBarButtonItem(title: "Welcome", style: .done, target: self, action: #selector(SignUpViewController.back(sender:)))
           
           navigationItem.leftBarButtonItem=btnBack
       }
       
       @objc
       func back(sender: UIBarButtonItem)
       {
           
           navigationController?.popViewController(animated: true)
       }
    
    @IBAction func signupSubmitBtn(_ sender: Any) {
        if(signupUsername.text?.count)! > 5
        {
            if(signupEmail.text?.verifyingEmail())!
            {
                if(signupPassword.text?.verifyingPassword())!
                {
                    if(signupAddress.text?.count)! > 3
                    {
                         user.set(signupUsername.text, forKey: "username")
                         user.set(signupPassword.text, forKey: "password")
                         user.set(signupEmail.text, forKey: "email")
                         user.set(signupAddress.text, forKey: "address")
                        
                        let sb = UIStoryboard(name: "Main", bundle: nil)
                                               let welcomeVC = sb.instantiateViewController(withIdentifier: "welcomeVC") as! WelcomeViewController
                                               self.navigationController?.pushViewController(welcomeVC, animated: true)
                    }
                    else
                    {
                        let signUpValidate = UIAlertController(title: "ADDRESS ALERT", message: "Address ought to be of min 3 length.", preferredStyle: .alert)
                            signUpValidate.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                            self.present(signUpValidate, animated: true)
                     }
                    
                   
                }
                else
                {
                    let signUpValidate = UIAlertController(title: "PASSWORD ALERT", message: "Password should contain one uppercase, one digit, one lowercase and length 8.",preferredStyle: .alert)
                    signUpValidate.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                    self.present(signUpValidate, animated: true)
                }
            }
            else
            {
                let signUpValidate = UIAlertController(title: "EMAIL ALERT", message: "Incorrect Email format.", preferredStyle: .alert)
                    signUpValidate.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
                    self.present(signUpValidate, animated: true)
             }
        }
        else
        {
            let signUpValidate = UIAlertController(title: "USERNAME ALERT", message: "Username needs to be of length 6.", preferredStyle: .alert)
            signUpValidate.addAction(UIAlertAction(title: "OK", style: .default, handler: nil ))
            self.present(signUpValidate, animated: true)
        }
    }
    
   
  
}

