//
//  AWBResultController.swift
//  maskargo
//
//  Created by Naelah on 28/10/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class AWBResultController: UIViewController {

    @IBAction func cancelButton(_ sender: Any) {
    }
    var awbresults:String = "yuyu"
    var json:[String:Any] = [:]
    var awb:Awb?
    var awbStatuses:[[String:String]] = []
    @IBOutlet weak var awbWeight: UILabel!
    @IBOutlet weak var awbPiece: UILabel!
    @IBOutlet weak var awbProduct: UILabel!
    @IBOutlet weak var awbStatus: UILabel!
    @IBOutlet weak var destination: UILabel!
    @IBOutlet weak var origin: UILabel!
    @IBOutlet weak var awbTime: UILabel!
    @IBOutlet weak var awbDate: UILabel!
    @IBOutlet weak var awbno: UILabel!
    
    @IBAction func closeButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func moreButton(_ sender: Any) {
        self.performSegue(withIdentifier: "awbSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //let origins = self.json["awbnumber"] as? String
        //print("json "+origins!)
        if let awb = awb {
            self.awbno.text = awb.awbNumber
            self.origin.text = awb.origin
            self.destination.text = awb.destination
            self.awbStatuses = awb.awbStatus
            self.awbStatus.text = awb.status
            self.awbTime.text = awb.time
            self.awbDate.text = awb.date
            self.awbWeight.text = awb.weight
        }
   
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "awbSegue" {
            if let awb_status = self.awbStatuses as? [[String:String]]{
            print("awb\(self.awbStatuses)")
            let toViewController = segue.destination as! AWBStatusViewController
            toViewController.awb = awb_status
            }
        }
    }
    


}
