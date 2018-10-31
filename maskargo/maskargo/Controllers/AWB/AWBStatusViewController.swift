//
//  AWBStatusViewController.swift
//  maskargo
//
//  Created by Naelah on 30/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit
import Alamofire


class AWBStatusViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    @IBOutlet weak var awsStatusTable: UITableView!
    var awb:AwbStatus?
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "awbStatusCell", for: indexPath) as! AWBStatusCell
        
        cell.station.text = "PEK"
        cell.location.text = "MG54354334"
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        awsStatusTable.delegate = self
        awsStatusTable.dataSource = self
        

    }



}
