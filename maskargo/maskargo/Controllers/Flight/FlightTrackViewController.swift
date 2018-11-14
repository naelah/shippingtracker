//
//  FlightTrackViewController.swift
//  maskargo
//
//  Created by Naelah on 13/11/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class FlightTrackViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var flightTable: UITableView!
    var origin:[String] = ["KUL", "NRT", "PEK", "PEN"]
    var destination:[String] = ["NRT", "PEK","PEN","KUL"]
    var status:[String] = ["On Time", "On Time","Delayed","Canceled"]
    var date:[String] = ["231118","241118","251118","261118"]
    var time:[String] = ["1230","2345","1420","2535"]
    var aircraft:[String] = ["MH220","MH5500","MH300","MH60"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return origin.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "flightTrackCell", for: indexPath) as! FlightTrackCell
        
        let index = indexPath.row
        cell.origin.text = origin[index]
        cell.destination.text = destination[index]
        cell.status.text = status[index]
        cell.date.text = date[index]
        cell.time.text = time[index]
        cell.aircraft.text = aircraft[index]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "trackFlightSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flightTable.delegate = self
        flightTable.dataSource = self
        flightTable.reloadData()
        
    }
    


}
