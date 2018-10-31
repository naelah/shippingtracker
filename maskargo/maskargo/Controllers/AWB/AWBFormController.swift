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
    
    @IBAction func unwindToViewController (_ segue : UIStoryboardSegue) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func submitButton(_ sender: Any) {
        //self.awbresults = awbTextfield.text!
        print("awb=="+self.awbTextfield.text!)
        awbService = AwbService(APIKey: API_KEY)
        if (self.awbTextfield.text == "" || self.awbTextfield.text == nil){
            print("empty")
            let alertController = UIAlertController(title: "awbInputError", message:
                "Please insert a valid awb number", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
        if (self.awbTextfield.text! != "") {
            self.activityIndicator.startAnimating()
            self.activityIndicator.isHidden = false
            awbService.getAwbDemo(){ (awbResults) in
                self.awbResults = awbResults
                DispatchQueue.main.async{
                    self.performSegue(withIdentifier: "awbResultSegue", sender: self)
                    self.activityIndicator.isHidden = true
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
//            let toViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "awbResultVC") as! AWBResultController
            if let awb = self.awbResults{
                toViewController.awbresults = awb.awbNumber!
                toViewController.awb = awb
                print("awb::"+self.awbResults!.awbNumber!)
            }
        }
    }
    
}
//public extension UIViewController {
//    @IBAction public func unwindToViewController (_ segue : UIStoryboardSegue) {
//        dismiss(animated: true, completion: nil)
//    }
//}


