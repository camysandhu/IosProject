//
//  ProductsListViewController.swift
//  IosProject
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit


class ProductsListViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate
{
    var passImageParameter : Int!
    var productClass = Products()
    
     var icons = [""]
    
     @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self

        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.icons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemsListCollectionViewCell
//        cell.itemImage.image = UIImage(named: icons[indexPath.row])
        return cell
    }
    

    


}
