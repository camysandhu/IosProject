//
//  AboutUsViewController.swift
//  IosProject
//
//  Created by charanpreet kaur on 2019-11-16.
//  Copyright © 2019 Camy. All rights reserved.
//

import UIKit
import WebKit
//https://stackoverflow.com/questions/49638653/load-local-web-files-resources-in-wkwebview
class AboutUsViewController: UIViewController, WKNavigationDelegate {

    

    @IBOutlet weak var aboutUsPage: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadHTMLFile()
      
        
    }
    
    func loadHTMLFile(){
        let filepath = Bundle.main.url(forResource: "AboutUsData", withExtension: "html")
        let aboutUsLink = URLRequest(url: filepath!)
        aboutUsPage.load(aboutUsLink)
    }

}
