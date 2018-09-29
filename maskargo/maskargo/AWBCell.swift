//
//  AWBCell.swift
//  maskargo
//
//  Created by Naelah on 30/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class AWBCell: UITableViewCell {

    @IBOutlet weak var origin: UILabel!
    @IBOutlet weak var dest: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var pcs: UILabel!
    @IBOutlet weak var product: UILabel!
    @IBOutlet weak var awb: UILabel!
    @IBOutlet weak var localDate: UILabel!
    @IBOutlet weak var localTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
