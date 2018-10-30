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
    var awbresults:String = ""
    var json:[String:Any] = [:]
    @IBOutlet weak var awbWeight: UILabel!
    @IBOutlet weak var awbPiece: UILabel!
    @IBOutlet weak var awbProduct: UILabel!
    @IBOutlet weak var awbStatus: UILabel!
    @IBOutlet weak var destination: UILabel!
    @IBOutlet weak var origin: UILabel!
    @IBOutlet weak var awbTime: UILabel!
    @IBOutlet weak var awbDate: UILabel!
    @IBOutlet weak var awbno: UILabel!
    @IBAction func moreButton(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //let origins = self.json["awbnumber"] as? String
        //print("json "+origins!)
        self.awbno.text = awbresults
   
    }
    


}
