//
//  MenuTableViewController.swift
//  IosProject
//
//  Created by Sandeep Jangra on 2019-11-14.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            switch indexPath.row{
            case 0:
                print("Items List")
                self.performSegue(withIdentifier: "movetoItemList", sender: nil)
            case 1:
                print("Cart")
                self.performSegue(withIdentifier: "moveToAddToCart", sender: nil)
            case 2:
                print("Orders")
                self.performSegue(withIdentifier: "moveToOrder", sender: nil)
            default:
                print("Invalid")
            }
        }else{
            switch indexPath.row{
            case 0:
                print("My Account")
                self.performSegue(withIdentifier: "moveToUpdateProfile", sender: nil)
            case 1:
                print("About Us")
                self.performSegue(withIdentifier: "moveToAboutUs", sender: nil)
            case 2:
                print("LogOut")
                self.performSegue(withIdentifier: "moveToWelcomePage", sender: nil)
            default:
            print("Invalid")
        }
    }

   
}
}
