//
//  settingTableViewCell.swift
//  maskargo
//
//  Created by Naelah on 13/11/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class settingTableViewCell: UITableViewCell {

    
    @IBOutlet weak var settingSwitch: UISwitch!
    @IBOutlet weak var settings: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
