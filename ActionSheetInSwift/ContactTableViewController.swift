//
//  ContactTableViewController.swift
//  ActionSheetInSwift
//
//  Created by Meheboob Nadaf on 2/12/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit
import MessageUI
//import FTViewController

class ContactTableViewController: UITableViewController,MFMailComposeViewControllerDelegate {
var sendFT: String!
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
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if(section==0)
        {
            return 1;
        }
        else
        {
            return 3;
        }
        
    }

       @IBAction func contactViaTwitter(_ sender: Any) {
        sendFT = "Twitter"

        
        performSegue(withIdentifier: "ft", sender: nil)
        
            }
    @IBAction func contactViaEmail(_ sender: Any) {
        
        let mailComposeViewController = self.configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
        
    }

    @IBAction func contactViaFacebook(_ sender: Any) {
        sendFT = "Facebook"

        super.performSegue(withIdentifier: "ft", sender: nil)
       // super.performSegue("ft", sender: nil)
        
            }
    
    
    //Mail
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["mrnadaf2010@gmail.com"])
       // mailComposerVC.setSubject("Sending you an in-app e-mail...")
       // mailComposerVC.setMessageBody("Sending e-mail in-app is not so bad!", isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        //let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device //could not send e-mail.  Please check e-mail configuration and try again.", delegate: //self, cancelButtonTitle: "OK")
        // sendMailErrorAlert.show()
        
        // self.showAlert(errorTitle: "Could Not Send Email", errorMessage: "Your device could not send e-mail.  Please check e-mail configuration and try again.")
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ft"{
            if let nextViewController = segue.destination as? FTViewController{
                nextViewController.toDicedeFacebookTwitter = sendFT //Or pass any values
               // nextViewController.valueOf123 = 123
            }
        }
    }
}
