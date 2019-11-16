//
//  LoginViewController.swift
//  IosProject
//
//  Created by Sandeep Jangra on 2019-11-13.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
let userLogin = UserDefaults.standard
    @IBOutlet weak var loginUsername: UITextField!
    @IBOutlet weak var loginPassword: UITextField!
    @IBOutlet weak var remembermeBtn: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        //https://stackoverflow.com/questions/37873119/how-to-toggle-a-uitextfield-secure-text-entry-hide-password-in-swift
        loginPassword.isSecureTextEntry = true
        
        if let loginUser = userLogin.string(forKey: "loginuser")
        {
            loginUsername.text = loginUser
            
            if let loginPass = userLogin.string(forKey: "loginPass")
            {
                loginPassword.text = loginPass
                remembermeBtn.isOn = true
            }
        }
        
        else
        {
           remembermeBtn.isOn = false
        }
        
    }
    
    @IBAction func loginShowPassBtn(_ sender: Any)
    {
        loginPassword.isSecureTextEntry = false
        
    }
    @IBAction func loginBtn(_ sender: Any)
    {
        if (loginUsername.text?.count)! > 1 && (loginPassword.text?.count)! > 1
        {
            if loginUsername.text! == (userLogin.string(forKey: "username")!) && loginPassword.text! == (userLogin.string(forKey: "password")!){

                if remembermeBtn.isOn{
                    userLogin.set(userLogin.string(forKey: "username")!, forKey: "loginuser")
                    userLogin.set(userLogin.string(forKey: "password")!, forKey: "loginpass")
                }else{
                    userLogin.removeObject(forKey: "loginuser")
                    userLogin.removeObject(forKey: "loginpass")
                }
                //moving to Home Page
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let menuVC = sb.instantiateViewController(withIdentifier: "menuVC") as! MenuTableViewController
                self.navigationController?.pushViewController(menuVC, animated: true)
                
              
                
            }else{
                let loginValidationAlert = UIAlertController(title: "Validation Alert", message: "Incorrect Username Or Password. Please Try Again!!!!!!", preferredStyle: .alert)
                loginValidationAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(loginValidationAlert, animated: true)
            }
        }
        else{
        let emptyAlert = UIAlertController(title: "ALERT", message: "Username or Password textFields cannot be blank.", preferredStyle: .alert)
                emptyAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(emptyAlert,animated: true)
            }
        }
        
    }
    
   


