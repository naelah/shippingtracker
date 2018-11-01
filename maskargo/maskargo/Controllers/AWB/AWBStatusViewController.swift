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
        
        print(awbStatus.count)
        return awbStatus.count
        
    }
    @IBAction func cancelButton(_ sender: Any) {
         dismiss(animated: true, completion: nil)
    }
    @IBAction func notifyButton(_ sender: Any) {
    }
    @IBOutlet weak var awsStatusTable: UITableView!
    var awb:[[String:String]] = []
    var awbStatus = [AwbStatus]()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "awbStatusCell", for: indexPath) as! AWBStatusCell
        let status = awbStatus[indexPath.row]
        
        cell.station.text = status.station
        cell.location.text = status.location
        cell.flight.text = status.flight
        cell.status.text = status.status
        cell.localDate.text = status.localDate
        cell.localTime.text = status.localTime
        print("Codes::"+status.statusCode!)
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getAwbStatus(awb: awb)
        awsStatusTable.delegate = self
        awsStatusTable.dataSource = self
        

    }
    
    func getAwbStatus(awb:[[String:String]]){
        if let data = awb as? [[String:String]] {
            print(data)
            self.awbStatus = data.map{ AwbStatus(awbStat: $0) }
            //let temp = data.map{ AwbStatus(awbStat: $0) }
            //self.awbStatus = temp.reversed()
            self.awsStatusTable.reloadData()
        }
    }



}
