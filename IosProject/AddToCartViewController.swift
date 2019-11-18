//
//  AddToCartViewController.swift
//  IosProject
//
//  Created by komaldeep kaur on 2019-11-16.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class AddToCartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource  {
    @IBOutlet weak var AddToCartTableView: UITableView!
    let sb = UIStoryboard(name: "Main", bundle: nil)
    var excessProductList = Cart.cartAccess
    override func viewDidLoad() {
        super.viewDidLoad()
         self.AddToCartTableView.delegate = self
         self.AddToCartTableView.dataSource = self
             
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Home", style: .done ,target: self, action: #selector(BackToHome))
                // Do any additional setup after loading the view.
            }
            
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return 1
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                var cell =
                return cell

            }
            
            func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 280.0
            }
            
            func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
                if editingStyle == .delete {
                    print("Deleted")
                    
                }
            }
            
            

            @objc func BackToHome(){
                let homeVC = sb.instantiateViewController(withIdentifier: "menuVC") as! MenuTableViewController
                self.navigationController?.pushViewController(homeVC, animated: true)
            }
            

        }

