//
//  AboutTableViewController.swift
//  ActionSheetInSwift
//
//  Created by Meheboob Nadaf on 2/11/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit
import Social
import MessageUI


class AboutTableViewController: UITableViewController ,UIActionSheetDelegate ,MFMailComposeViewControllerDelegate {
    
      var decideMailIndex:Int = 0
    
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
       return 3;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if (section == 1) {
            return 4;
        }
            
        else if (section == 2){
            
            return 2;
        }
        else{
            return 1;
        }
    }

  
    @IBAction func checkUpdatesButton(_ sender: Any) {
        
        let url  = NSURL(string: "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=1205880104&mt=8&uo=6")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }
        
        
    }
    
    @IBAction func moreApps(_ sender: Any) {
        
        performSegue(withIdentifier: "moreapps", sender: nil)
    }
    
    @IBAction func contactUs(_ sender: Any) {
        
        performSegue(withIdentifier: "contact", sender: nil)
        
    }
    
    
    @IBAction func rateAndReview(_ sender: Any) {
        let url  = NSURL(string: "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?id=1205880104&pageNumber=0&sortOrdering=2&type=Purple+Software&mt=8")
        
        //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
        
        if UIApplication.shared.canOpenURL(url! as URL) {
            //  UIApplication.shared.openURL(url! as URL)
            
            UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
        }

    
    }
    
    @IBAction func sendFeedback(_ sender: Any) {
        
        decideMailIndex = 1
        
        let mailComposeViewController = self.configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
        
    }
    
    @IBAction func shareThisApp(_ sender: Any) {
        
        let shareAppLink = "Download Dr APJ Abdul Kalam Hindi Quotes from App Store by clicking this link http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=1205880104&mt=8&uo=6"
        
        //Create the AlertController and add Its action like button in Actionsheet
        let actionSheetControllerIOS8: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        actionSheetControllerIOS8.popoverPresentationController?.sourceView = self.view
        actionSheetControllerIOS8.popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        let cancelActionButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
            print("Cancel")
        }
        actionSheetControllerIOS8.addAction(cancelActionButton)
        
        
        
        
        
     //   let WhatsAppButton: UIAlertAction = UIAlertAction(title: "WhatsApp", style: .default)
      //  { action -> Void in
      //      print("WhatsApp")
            
            
      // Download%20My%20Greetings%20App%20from%20App%20Store%20by%20clicking%20this%20link%20http:%2F%2Fitunes.apple.com%2FWebObjects%2FMZStore.woa%2Fwa%2FviewSoftware%3Fid=1198887505&mt=8&uo=6
            
          //  var str = "Download Dr APJ Abdul Kalam Hindi from App Store by clicking this link http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=1198887505&mt=8&uo=6"
            
//            str =     str.replacingOccurrences(of: ":", with: "%3A", options: .literal, range: nil)
//            str =     str.replacingOccurrences(of: "/", with: "%2F", options: .literal, range: nil)
//            str =     str.replacingOccurrences(of: "?", with: "%3F", options: .literal, range: nil)
//            str =     str.replacingOccurrences(of: ",", with: "%2C", options: .literal, range: nil)
//            str =     str.replacingOccurrences(of: "=", with: "%3D", options: .literal, range: nil)
//            str =     str.replacingOccurrences(of: "&", with: "%26", options: .literal, range: nil)
            


            
            //str=str.addingPercentEncoding(withAllowedCharacters: (NSCharacterSet.urlQueryAllowed))!
//            
//            let whatsappURL =  "whatsapp://send?text=\(str)"
//            
//            let encodeedURL = whatsappURL.addingPercentEncoding(withAllowedCharacters: (NSCharacterSet.urlQueryAllowed))!
//           let fileUrl =  Foundation.URL(string: encodeedURL)
//           // let fileUrl = NSURL(string: encodeedURL)
//            
//            if UIApplication.shared.canOpenURL(fileUrl! as URL) {
//                //  UIApplication.shared.openURL(url! as URL)
//                
//                UIApplication.shared.open(fileUrl! as URL, options: [:], completionHandler: nil)
//            }
//            
//        }
//        actionSheetControllerIOS8.addAction(WhatsAppButton)
        
        
        
        
        
        
        let FacebookButton: UIAlertAction = UIAlertAction(title: "Facebook", style: .default)
        { action -> Void in
            print("Facebook")
            
            
            
            
            if let vc = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
                vc.setInitialText(shareAppLink)
                
                self.present(vc, animated: true, completion: nil)
            }
            
            
            
        }
        actionSheetControllerIOS8.addAction(FacebookButton)
        
        
        
        let TwitterButton: UIAlertAction = UIAlertAction(title: "Twitter", style: .default)
        { action -> Void in
            print("Twitter")
            
            
            
            
            if let vc = SLComposeViewController(forServiceType: SLServiceTypeTwitter) {
                vc.setInitialText(shareAppLink)
               
                
                
                self.present(vc, animated: true, completion: nil)
            }
            
            
            
        }
        actionSheetControllerIOS8.addAction(TwitterButton)
        
        
        
        
        
        
        
        
        
        let MailButton: UIAlertAction = UIAlertAction(title: "Mail", style: .default)
        { action -> Void in
            print("Mail")
            
             self.decideMailIndex = 0
            
            let mailComposeViewController = self.configuredMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                self.showSendMailErrorAlert()
            }
            
            
        }
        
        
        
        
        
        
        
        actionSheetControllerIOS8.addAction(MailButton)
        
        let MoreButton: UIAlertAction = UIAlertAction(title: "More", style: .default)
        { action -> Void in
            
            
            print("More")
            
            // text to share
            let text = shareAppLink
            
            // set up activity view controller
            let textToShare = [ text ]
            let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
            
            // exclude some activity types from the list (optional)
            activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
            
            // present the view controller
            self.present(activityViewController, animated: true, completion: nil)
            
            
        }
        actionSheetControllerIOS8.addAction(MoreButton)
        
        self.present(actionSheetControllerIOS8, animated: true, completion: nil)

    }
    
    
    //Mail
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
      
        
        if decideMailIndex == 0 {
            
            mailComposerVC.setSubject("Download App")
            mailComposerVC.setMessageBody("http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=1205880104&mt=8&uo=6", isHTML: false)
        }
        
        if decideMailIndex == 1 {
              mailComposerVC.setToRecipients(["mrnadaf2010@gmail.com"])
            mailComposerVC.setSubject("Dr Apj Abdul Kalam Hindi Quotes")
            mailComposerVC.setMessageBody("", isHTML: false)
        }
        
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
    
    func showAlert  (errorTitle : String, errorMessage : String) {
        
        let alertController = UIAlertController(title: errorTitle, message:errorMessage, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }

    

    
    
}
