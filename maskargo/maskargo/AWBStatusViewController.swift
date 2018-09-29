//
//  AWBStatusViewController.swift
//  maskargo
//
//  Created by Naelah on 30/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class AWBStatusViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "awbStatusCell", for: indexPath) as! AWBStatusCell
        
        cell.station.text = "PEK"
        cell.location.text = "MG54354334"
        cell.agent.text = "MH67578"
        cell.flight.text = "MH700"
        cell.weight.text = "45"
        cell.pcs.text = "2"
        cell.localDate.text = "12 SEPT"
        cell.localTime.text = "1298"
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
