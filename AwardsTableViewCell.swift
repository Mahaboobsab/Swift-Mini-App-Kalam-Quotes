//
//  AwardsTableViewCell.swift
//  ActionSheetInSwift
//
//  Created by Mahaboobsab Nadaf on 13/02/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit

class AwardsTableViewCell: UITableViewCell {

    @IBOutlet var yeasrLabel: UILabel!
    @IBOutlet var awardName: UILabel!
    @IBOutlet var awardGiven: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
