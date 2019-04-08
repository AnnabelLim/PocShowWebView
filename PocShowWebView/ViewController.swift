//
//  ViewController.swift
//  PocShowWebView
//
//  Created by Annabel Lim on 4/8/19.
//  Copyright © 2019 Annabel Lim. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func showWebpagePressed(_ sender: UIButton) {
        let urlString = "https://subwaysolutions.myshopify.com/collections/all"
        // let urlString = "https://www.quarksolutions.com"
        if let url = URL(string: urlString) {
            let vc = SFSafariViewController(url: url)
            vc.delegate = self
            present(vc, animated: true)
        }
    }
    
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        dismiss(animated: true)
    }
    
}

