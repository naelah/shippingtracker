//
//  AWBFormController.swift
//  maskargo
//
//  Created by Naelah on 28/10/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import Alamofire
import UIKit

class AWBFormController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    //var awbresults: String = ""
    //var jsons: [String: Any] = [:]
    var awbService: AwbService!
    var awbResults: Awb?
    //var complitionHandler: (([String: Any])->Void)?

    @IBOutlet weak var awbTextfield: UITextField!
    @IBAction func submitButton(_ sender: Any) {
        //self.awbresults = awbTextfield.text!
        print("awb=="+self.awbTextfield.text!)
        awbService = AwbService(APIKey: API_KEY)
        if (self.awbTextfield.text! != "") {
            self.activityIndicator.startAnimating()
            self.activityIndicator.isHidden = false
            awbService.getAwb(awb: self.awbTextfield.text!){ (awbResults) in
                self.awbResults = awbResults
                DispatchQueue.main.async{
                    self.performSegue(withIdentifier: "awbResultSegue", sender: self)
                    }
            }
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.activityIndicator.isHidden = true
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "awbResultSegue" {
            let toViewController = segue.destination as! AWBResultController
            //let awb = self.awbResults
            toViewController.awbresults = self.awbTextfield.text!
            //print("awb::"+self.awbResults!.awbNumber!)
        }
    }
    
}


