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
                return excessProductList.productList.count
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                  let cartCell = tableView.dequeueReusableCell(withIdentifier: "itemCartCell") as! CartItemTableViewCell
                cartCell.cartImageView.image = UIImage(named: excessProductList.productList[indexPath.row].productFImage)
                               cartCell.cartName.text = excessProductList.productList[indexPath.row].productName
                               cartCell.cartQuantity.text = String(excessProductList.productList[indexPath.row].productQuantity)
                               cartCell.cartPrice.text = String(excessProductList.productList[indexPath.row].productPrice).addingDollar()
                               Cart.cartAccess.totalPrice = Int(excessProductList.productList[indexPath.row].productPrice * Float(excessProductList.productList[indexPath.row].productQuantity))
                               cartCell.cartTotalPrice.text = String(Cart.cartAccess.totalPrice).addingDollar()
                return cartCell

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

