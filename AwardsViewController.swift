//
//  AwardsViewController.swift
//  ActionSheetInSwift
//
//  Created by Mahaboobsab Nadaf on 13/02/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit

class AwardsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var awardName = ["डॉक्टर ऑफ़ साइन्स","डॉक्टर ऑफ़ लॉज़ (मानद उपाधि)","आइ॰ई॰ई॰ई॰ मानद सदस्यता","डॉक्टर ऑफ इन्जीनियरिंग","मानद डॉक्टरेट","हूवर मेडल","वॉन कार्मन विंग्स अन्तर्राष्ट्रीय अवार्ड","डॉक्टर ऑफ इन्जीनियरिंग (मानद उपाधि)","डॉक्टर ऑफ साइन्स (मानद उपाधि)","डॉक्टर ऑफ साइन्स एण्ड टेक्नोलॉजी की मानद उपाधि","किंग चार्ल्स II मेडल","डॉक्टर ऑफ साइन्स की मानद उपाधि","रामानुजन पुरस्कार","वीर सावरकर पुरस्कार","इंदिरा गाँधी राष्ट्रीय एकता पुरस्कार","भारत रत्न","विशिष्ट शोधार्थी","पद्म विभूषण","पद्म भूषण"]
    
    
      var yearItems = ["2014","2012","2011","2010","2009","2009","2009","2008","2008","2007","2007","2007","2000","1998","1997","1997","1994","1990","1981"]
    
    
    var awardGivenBy = ["एडिनबर्ग विश्वविद्यालय, यूनाइटेड किंगडम","साइमन फ़्रेज़र विश्वविद्यालय","आइ॰ई॰ई॰ई॰","यूनिवर्सिटी ऑफ़ वाटरलू","ऑकलैंड विश्वविद्यालय","ए॰एस॰एम॰ई॰ फाउण्डेशन, (सं॰रा॰अमे॰)","कैलिफोर्निया इंस्टीट्यूट ऑफ टेक्नोलॉजी, (सं॰रा॰अमे॰)","नानयांग टेक्नोलॉजिकल विश्वविद्यालय, सिंगापुर","अलीगढ़ मुस्लिम विश्वविद्यालय, अलीगढ़","कार्नेगी मेलन विश्वविद्यालय","रॉयल सोसायटी, यूनाइटेड किंगडम","वूल्वरहैंप्टन विश्वविद्यालय, यूनाईटेड किंगडम","अल्वार्स शोध संस्थान, चेन्नई","भारत सरकार","भारतीय राष्ट्रीय काँग्रेस","भारत सरकार","इंस्टीट्यूट ऑफ़ डायरेक्टर्स (इण्डिया)","भारत सरकार","भारत सरकार"]
    
    
    
    
    @IBOutlet var myTableView: UITableView!
  
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        return yearItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! AwardsTableViewCell
        cell.yeasrLabel.text = yearItems[indexPath.row]
        cell.awardName.text = awardName[indexPath.row]
        cell.awardGiven.text = awardGivenBy[indexPath.row]
        return cell
}
}
