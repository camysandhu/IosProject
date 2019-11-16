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
     
        if let loginuser = userLogin.value(forKey: "loginuser")
        {
            loginUsername.text = loginuser as? String
            if let loginPass = userLogin.value(forKey: "loginPass")
            {
                loginPassword.text = loginPass as? String
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
            if readUsersPlist(){
//            if loginUsername.text! == (userLogin.string(forKey: "username")!) && loginPassword.text! == (userLogin.string(forKey: "password")!){

                if remembermeBtn.isOn{
                    self.userLogin.set(loginUsername, forKey: "loginuser")
                    self.userLogin.set(loginPassword, forKey: "loginPass")
                    
                    
//
//                    self.userLogin.set(userLogin.string(forKey: "username"), forKey: "loginuser")
//                    self.userLogin.set(userLogin.string(forKey: "password"), forKey: "loginpass")
                }else{
                    self.userLogin.removeObject(forKey: "loginuser")
                    self.userLogin.removeObject(forKey: "loginpass")
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
        
    //}
func readUsersPlist()-> Bool{
    if let bundlePath = Bundle.main.path(forResource: "UserList", ofType: "plist")
    {
        let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
        let userlist = dictionary!["Users"] as! NSArray
        for user in userlist{
            let u = user as! NSDictionary
            let username = u["username"] as! String
            let password = u["password"] as! String
            if username == loginUsername.text! && password == loginPassword.text!
            {return true}
            
        }
    }
    return false
}
   
}

