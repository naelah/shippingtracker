//
//  FormTableViewCell.swift
//  maskargo
//
//  Created by Naelah on 13/11/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class FormTableViewCell: UITableViewCell {

    @IBOutlet weak var formTitle: UILabel!
    @IBOutlet weak var formSub: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
