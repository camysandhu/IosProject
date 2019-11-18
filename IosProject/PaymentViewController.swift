//
//  PaymentViewController.swift
//  IosProject
//
//  Created by komaldeep kaur on 2019-11-16.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
    let getUserAddress = UserDefaults.standard
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var shippingAddressLbl: UITextField!
    @IBOutlet weak var cvvTxt: UITextField!
    @IBOutlet weak var cardNumberTxt: UITextField!
    @IBOutlet weak var cvvLbl: UILabel!
    @IBOutlet weak var cardNumberLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cardNumberLbl.isHidden = true
        self.cvvLbl.isHidden = true
        self.cvvTxt.isHidden = true
        self.cardNumberTxt.isHidden = true
        self.shippingAddressLbl.text = self.getUserAddress.string(forKey: "address")
        self.totalAmountLbl.text = String(Cart.cartAccess.totalPrice).addingDollar()
       
    }
    func addProductOrderedList(){
        //Adding order ID
        let list = Cart.cartAccess.productList
        Cart.cartAccess.orderedProductList.append(list)
        Cart.cartAccess.productList.removeAll()
    }
    @IBAction func placeOrderBtn(_ sender: Any) {
        let sb1 = UIStoryboard(name: "Main", bundle: nil)
        //move to Order
            let orderVC = sb1.instantiateViewController(withIdentifier: "OrderVC") as! OrderViewController
        //validating user payment details
            if Cart.cartAccess.paymentMethod{
                if (self.cardNumberTxt.text?.count)! > 15 {
                    self.getUserAddress.set(self.cardNumberTxt.text, forKey: "cardno")
                    if (self.cvvTxt.text?.count)! > 2{
                        self.getUserAddress.set(self.cvvTxt.text, forKey: "CVV")
                        
                       addProductOrderedList()
                        
                        if((self.shippingAddressLbl.text?.count)! > 3){
                            self.getUserAddress.set(self.shippingAddressLbl.text, forKey: "address")
                        }
                    }else{
                        //alerts
                        let alert = UIAlertController(title: "CVV ALERT", message: "CVV needs to be of 3 digits", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert,animated: true)
                    }
                }else{
                    let alert = UIAlertController(title: "CARD ALERT", message: "Card number must be of 16 digits", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert,animated: true)
                }
            }else
            {
                
                addProductOrderedList()
                if((self.shippingAddressLbl.text?.count)! > 3)
                {
                    self.getUserAddress.set(self.shippingAddressLbl.text, forKey: "address")
                }
                self.navigationController?.pushViewController(orderVC, animated: true)
            }
        }
        
       

}
   
   
                    
               
    
    
    

