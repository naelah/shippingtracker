//
//  AWBViewController.swift
//  maskargo
//
//  Created by Naelah on 30/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit
import Alamofire

class AWBTableViewController: UITableViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "awbCell", for: indexPath) as! AWBCell
        
        let awb = "23264780435"
        let headers: HTTPHeaders = ["Ocp-Apim-Subscription-Key": API_KEY]
        let url = "https://mabapi.azure-api.net/mhkargo/v1/getawb?awbno="+awb
        Alamofire.request(url, method: .get, headers: headers).responseJSON{ response in
            
            guard let json = response.result.value as? [String: Any] else {
                print("didn't get todo object as JSON from API")
                print("Error: \(String(describing: response.result.error))")
                return
            }
            print(json)
            cell.origin.text = json["origin"] as? String
            cell.dest.text = json["destination"] as? String
            cell.status.text = "RCS"
            cell.product.text = json["product"] as? String
            cell.pcs.text = "2 PCS"
            cell.localTime.text = "1806"
            cell.localDate.text = "12SEPT"
        
            
            
        }
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "awbsegue", sender: indexPath)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "awbsegue" {
//            let toViewController = segue.destination as! AWBStatusViewController
//            let indexPath = sender as! IndexPath
//        
//        }
    }
    

    

}
