//
//  UpdateProfileViewController.swift
//  OnlineShopping
//
//  Created by Macbook on 2019-03-14.
//  Copyright © 2019 Macbook. All rights reserved.
//

import UIKit

class MyAccountViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    let displayUserData = UserDefaults.standard
    
    @IBOutlet weak var profilePicImg: UIImageView!
    @IBOutlet weak var profileUsername: UITextField!
    @IBOutlet weak var profilePasssword: UITextField!
    @IBOutlet weak var profileEmail: UITextField!
    @IBOutlet weak var profileAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        
        //display user data with disable fields
        profileUsername.placeholder = displayUserData.string(forKey: "username")
        profilePasssword.placeholder = displayUserData.string(forKey: "password")
        profileEmail.placeholder = displayUserData.string(forKey: "email")
        profileAddress.placeholder = displayUserData.string(forKey: "address")
    }
    
    
   
}
