//
//  ProductsListViewController.swift
//  IosProject
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit

class ProductsListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var passImageParameter : Int!
    var productClass = Products()
    @IBOutlet weak var collectionView: UICollectionView!
    
    var icons = ["apple-logo.png","htc.png","mi.png","oppo.png","samsung.png","vivo.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        mergeItems()
    }
    func mergeItems()
    {
        let product1 = Products(productid: "2222", productName: "Iphone 11 Pro Max", productBrand: "Apple", productDescription: "Four new textured matt glass finishes and stainless-steel design.The iPhone 11 Pro Max features Triple 12 MP Ultra Wide (13mm), Wide (26mm) and Telephoto (52mm) cameras. ", productPrice: 1799.0, productFImage: "appleFront.jpg", productBImage: "appleBack.jpg", productQuantity: 1)
        
        let product2 = Products(productid: "3333", productName: "HTC 630", productBrand: "HTC", productDescription: "2 GB RAM | 16 GB ROM | Expandable Upto 256 GB. 8MP Rear Camera | 5MP Front Camera", productPrice: 599.9, productFImage: "htcFront.jpg", productBImage: "htcBack.jpg", productQuantity: 1)
        
        let product3 = Products(productid: "4444", productName: "Redmi 8A", productBrand: "MI", productDescription: "The Redmi 8A features a 5000-mAh high-capacity battery, so you can watch more videos, click more pictures, play more games on a single charge. What’s more? It also supports 18 W Fast Charge, so you can get back in action, in no time.", productPrice: 999.9, productFImage: "redmiFront.jpg", productBImage: "redmiBack.jpg", productQuantity: 1)
        
        let product4 = Products(productid: "5555", productName: "OPPO A3s", productBrand: "OPPO", productDescription: "The Oppo A3s features a 15.75-cm (6.2) HD+ display and an aspect ratio of 19:9, providing you with a stimulating and immersive visual experience. ", productPrice: 899.8, productFImage: "oppoFront.jpg", productBImage: "oppoBack.jpg", productQuantity: 1)
        
        let product5 = Products(productid: "6666", productName: "Samsung S10", productBrand: "Samsung", productDescription: "Get ready to explore the next generation of powerful computing and mobile photography with the Samsung Galaxy S10.", productPrice: 1500.7, productFImage: "samsung10Front.jpg", productBImage: "Samsung10Back.jpg", productQuantity: 1
        )
        let product6 = Products(productid: "7777", productName: "VIVO Z1 Pro", productBrand: "VIVO", productDescription: "Powered by the Qualcomm Snapdragon 712 AIE processor and 4 GB of RAM, this phone can handle any task seamlessly. The advanced 10-nm design, a clock speed of up to 2.3 GHz and Adreno 616 G.", productPrice: 1100, productFImage: "oppoFront.jpg", productBImage: "oppoBack.jpg", productQuantity: 1)
        
               productClass.addproducts(pid: 2222, prod: product1)
               productClass.addproducts(pid: 3333, prod: product2)
               productClass.addproducts(pid: 4444, prod: product3)
               productClass.addproducts(pid: 5555, prod: product4)
               productClass.addproducts(pid: 6666, prod: product5)
               productClass.addproducts(pid: 7777, prod: product6)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.icons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemsListCollectionViewCell
        cell.itemImage.image = UIImage(named: icons[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0{
        passImageParameter = indexPath.row
        switch indexPath.row{
            case 0:
            print("Apple")
            case 1:
            print("HTC")
            case 2:
            print("MI")
            case 3:
            print("OPPO")
            case 4:
            print("SAMSUNG")
            case 5:
            print("VIVO")
            default:
            print("Invalid")
            }
            self.performSegue(withIdentifier: "moveToDetails", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ProductDetailsViewController
        switch self.passImageParameter
        {
        case 0:
            destination.proDetailObject = productClass.productdetails[2222]!
        case 1:
            destination.proDetailObject = productClass.productdetails[3333]!
        case 2:
            destination.proDetailObject = productClass.productdetails[4444]!
        case 3:
            destination.proDetailObject = productClass.productdetails[5555]!
        case 4:
            destination.proDetailObject = productClass.productdetails[6666]!
        case 5:
            destination.proDetailObject = productClass.productdetails[7777]!
        default:
            print("Invalid")
        }
    }
    

}
