//
//  WebViewController.swift
//  TableViewApp
//
//  Created by 차소민 on 1/15/24.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet var webView: WKWebView!
    
    var url = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: url) {
            
            let request = URLRequest(url: url)
            
            webView.load(request)
        }
        
        }

    



}
