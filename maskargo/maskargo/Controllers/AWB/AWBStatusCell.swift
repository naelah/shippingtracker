//
//  AWBStatusCell.swift
//  maskargo
//
//  Created by Naelah on 30/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class AWBStatusCell: UITableViewCell {
    
    @IBOutlet weak var station: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var agent: UILabel!
    @IBOutlet weak var flight: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var pcs: UILabel!
    @IBOutlet weak var localDate: UILabel!
    @IBOutlet weak var localTime: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var status: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
    }


}
