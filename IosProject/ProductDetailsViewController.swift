//
//  ProductDetailsViewController.swift
//  IosProject
//
//  Created by komaldeep kaur on 2019-11-15.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class ProductDetailsViewController: UIViewController {
          var proDetailObject = Products()
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var brandLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var quantityTxt: UITextField!
    override func viewDidLoad() {
        
        super.viewDidLoad()
         productImageView.image = UIImage(named: proDetailObject.productFImage)
        
        
    }
    
    @IBAction func proSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex
        {
        case 0:
            productImageView.image = UIImage(named: proDetailObject.productFImage)
            case 1:
            productImageView.image = UIImage(named: proDetailObject.productBImage)
        default:
            print("Inavild Option")
        }
    }

}