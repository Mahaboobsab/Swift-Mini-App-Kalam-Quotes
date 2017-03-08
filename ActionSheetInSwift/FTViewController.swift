//
//  FTViewController.swift
//  ActionSheetInSwift
//
//  Created by Meheboob Nadaf on 2/12/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit

class FTViewController: UIViewController,UIWebViewDelegate {
    
var toDicedeFacebookTwitter: String! = ""
    func updatedSelectedName(newName: String) {
       
    }
    @IBOutlet var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

       
        if (toDicedeFacebookTwitter == "Facebook") {
            print("Hello, Facebook")
            
            let url = NSURL (string: "https://www.facebook.com/search/top/?q=neo%20rays%20software%20solutions%20pvt%20ltd");
            myWebView.loadRequest(NSURLRequest(url: url! as URL) as URLRequest);
            
        }
        
        
        if (toDicedeFacebookTwitter == "Twitter") {
            print("Hello, Twitter")
            
            let url = NSURL (string: "https://twitter.com/NeoRaysSoftware");
            myWebView.loadRequest(NSURLRequest(url: url! as URL) as URLRequest);
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     public func webViewDidStartLoad(_ webView: UIWebView){
    
       UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
   
     public func webViewDidFinishLoad(_ webView: UIWebView){
     UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    public func webView(_ webView: UIWebView, didFailLoadWithError error: Error){
    
        showAlert(errorTitle: "Error", errorMessage: "Please check Internet Connection")
       // _ = navigationController?.popViewController(animated: true)
        
    }

    
    func showAlert  (errorTitle : String, errorMessage : String) {
        let alertController = UIAlertController(title: errorTitle, message:
            errorMessage, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.destructive,handler: { action in
            print("pressed")
        }))
}
    override func viewWillDisappear(_ animated : Bool) {
        super.viewWillDisappear(animated)
        
        if (self.isMovingFromParentViewController){
             UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
    }
}

