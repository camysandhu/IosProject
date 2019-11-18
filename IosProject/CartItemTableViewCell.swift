//
//  CartItemTableViewCell.swift
//  IosProject
//
//  Created by komaldeep kaur on 2019-11-16.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class CartItemTableViewCell: UITableViewCell {
    @IBOutlet weak var cartImageView: UIImageView!
    @IBOutlet weak var cartName: UILabel!
    @IBOutlet weak var cartQuantity: UILabel!
    @IBOutlet weak var cartTotalPrice: UILabel!
    @IBOutlet weak var cartPrice: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    

}
