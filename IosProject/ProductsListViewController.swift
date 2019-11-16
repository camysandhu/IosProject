//
//  ProductsListViewController.swift
//  IosProject
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class ProductsListViewController: UIViewController
//, UICollectionViewDelegate, UICollectionViewDataSource
{
      var productClass = Products()
    var icons = ["apple-logo.png","htc.png","mi.png","oppo.png","samsung.png","vivo.png"]
    

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
//

}
