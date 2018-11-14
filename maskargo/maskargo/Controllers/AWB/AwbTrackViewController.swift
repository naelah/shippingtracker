//
//  AwbTrackViewController.swift
//  maskargo
//
//  Created by Naelah on 14/11/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class AwbTrackViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    var origin: [String] = ["PEK","PEN","NRT","HND","KUL"]
    var destination: [String] = ["PEN","NRT","HND","KUL","PEK"]
    var awb: [String] = ["232678456","232675906","232348456","23267374","232672364"]
    var status: [String] = ["Goods Delivered","Documents","Flight Departed","Cleared Customs","Prepared for Loading"]
    var date: [String] = ["2011","2111","2311","2411","2511"]
    var time: [String] = ["2300","1200","1045","1830","1930"]
    
    var json:[String:Any] = [:]
    // var awb:Awb?
    var awbStatuses:[[String:String]] = []

    @IBOutlet weak var awbTrackTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        awbTrackTable.delegate = self
        awbTrackTable.dataSource = self
        awbTrackTable.reloadData()

    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return origin.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "awbTrackCell", for: indexPath) as! AWBTrackCell
        
        let index = indexPath.row
        
        cell.origin.text = origin[index]
        cell.destination.text = destination[index]
        cell.awb.text = awb[index]
        cell.status.text = status[index]
        cell.date.text = date[index]
        cell.time.text = time[index]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "awbResultTracking", sender: self)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "awbTrackSegue" {
//            if let awb_status = self.awbStatuses as? [[String:String]]{
//                print("awb\(self.awbStatuses)")
//                let toViewController = segue.destination as! AWBStatusViewController
//                toViewController.awb = awb_status
//            }
//        }
//    }
//

}
