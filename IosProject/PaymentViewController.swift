//
//  PaymentViewController.swift
//  IosProject
//
//  Created by komaldeep kaur on 2019-11-16.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {
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
      
        self.totalAmountLbl.text = String(Cart.cartAccess.totalPrice).addingDollar()
       
    }
}
   
   
                    
               
    
    
    

