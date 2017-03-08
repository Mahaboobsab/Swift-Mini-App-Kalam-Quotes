//
//  MoreAppsTableViewController.swift
//  ActionSheetInSwift
//
//  Created by Meheboob Nadaf on 2/12/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit

class MoreAppsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    @IBAction func pcite2(_ sender: Any) {
        
        let url  = NSURL(string: "https://appsto.re/in/Lp6Sgb.i")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
        
        
    }

    @IBAction func greet2(_ sender: Any) {
        
        let url  = NSURL(string: "https://appsto.re/in/cqG5gb.i")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
        
    }
    @IBAction func apj2(_ sender: Any) {
        
        let url  = NSURL(string: "https://appsto.re/in/rjzDhb.i")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
        
    }
    @IBAction func pcite(_ sender: Any) {
        let url  = NSURL(string: "https://appsto.re/in/Lp6Sgb.i")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
        
        
        
    }
    
    @IBAction func greetingApp(_ sender: Any) {
        
        let url  = NSURL(string: "https://appsto.re/in/cqG5gb.i")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
        
    }
    @IBAction func apjApp(_ sender: Any) {
        
        let url  = NSURL(string: "https://appsto.re/in/rjzDhb.i")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
        
    }
   }
