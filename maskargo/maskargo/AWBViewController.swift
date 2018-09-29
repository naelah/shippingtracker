//
//  AWBViewController.swift
//  maskargo
//
//  Created by Naelah on 30/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class AWBTableViewController: UITableViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "awbCell", for: indexPath) as! AWBCell
        cell.origin.text = "KUL"
        cell.dest.text = "PEK"
        cell.status.text = "RCS"
        cell.product.text = "20KG Dexathimia"
        cell.pcs.text = "2 PCS"
        cell.localTime.text = "1806"
        cell.localDate.text = "12SEPT"
        
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
