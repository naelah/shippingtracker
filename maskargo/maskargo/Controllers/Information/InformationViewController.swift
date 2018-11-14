//
//  InformationViewController.swift
//  maskargo
//
//  Created by Naelah on 14/10/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit
import Alamofire

class InformationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var infoTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTable.delegate = self
        infoTable.dataSource = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return information.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath) as! InformationTableViewCell
        
        let index = indexPath.row
        cell.infoTitle.text = information[index]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "infoSegue", sender: self)
    }
    



}
