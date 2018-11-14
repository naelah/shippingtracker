//
//  FlightTrackTableViewCell.swift
//  maskargo
//
//  Created by Naelah on 13/11/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class FlightTrackCell: UITableViewCell {

    @IBOutlet weak var origin: UILabel!
    @IBOutlet weak var destination: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var aircraft: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
