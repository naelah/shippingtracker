//
//  InformationViewController.swift
//  maskargo
//
//  Created by Naelah on 14/10/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {

    @IBOutlet weak var status: UILabel!
    var jsonResponse = String()
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        let dailyReportSalesApi = BASEURL_DAILYREPORT_SALES+"?para1=\(self.salonInputTxt.text!)&para2=\(date)"
//        print(dailyReportSalesApi)
//        BizManager.sharedInstance.WebserviceReq(methodType: "GET", methodUrl: dailyReportSalesApi, parseString: "string", parameters: [:], completion: { (status : Int, response : String) in
//            print("response isi: " + response)
//            
//            //error handling
//            if (response == ""){
//                self.salonInputTxt.text = USERDEFAULT.string(forKey: USERDEFAULT_LEGACYID)!
//                let alert = UIAlertController(title: "Alert", message: "Salon ID was not found", preferredStyle: UIAlertControllerStyle.alert)
//                alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
//                self.present(alert, animated: true, completion: nil)
//                self.viewDidLoad()
//            }else{
//                let jsonObj : [[String : Any]] =  try! JSONSerialization.jsonObject(with:response.data(using: String.Encoding.utf8)!) as! [[String : Any]]
//                let sales = jsonObj[0] as [String: Any]
//                


//        jsonResponse = dataRequest(urlToRequest: urlToRequest)
//        print(jsonResponse)
        let urlToRequest = "https://mabapi.azure-api.net/mhkargo/v1/getawb?awbno=23264780435"
        
        let url4 = URL(string: urlToRequest)!
        let session4 = URLSession.shared
        let request = NSMutableURLRequest(url: url4)
        request.httpMethod = "GET"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        let paramString = "awbno=23264780435"
        // var dataString = "No Data"
        request.httpBody = paramString.data(using: String.Encoding.utf8)
        request.addValue("4560b3d41a3f4fe09443f88b92342ce7", forHTTPHeaderField: "Ocp-Apim-Subscription-Key")
        let task = session4.dataTask(with: request as URLRequest) { (data, response, error) in
            guard let _: Data = data, let _: URLResponse = response, error == nil else {
                print("*****error")
                return
            }
            let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)! as String
            // print("*****This is the data 4: \(String(describing: dataString))") //JSONSerialization
            
            
            
        }
        task.resume()

        
    
    }
    
    func dataRequest(urlToRequest: String) -> String{
        let url4 = URL(string: urlToRequest)!
        let session4 = URLSession.shared
        let request = NSMutableURLRequest(url: url4)
        request.httpMethod = "GET"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringCacheData
        let paramString = "awbno=23264780435"
        var dataString = "No Data"
        request.httpBody = paramString.data(using: String.Encoding.utf8)
        request.addValue("4560b3d41a3f4fe09443f88b92342ce7", forHTTPHeaderField: "Ocp-Apim-Subscription-Key")
        let task = session4.dataTask(with: request as URLRequest) { (data, response, error) in
            guard let _: Data = data, let _: URLResponse = response, error == nil else {
                print("*****error")
                return
            }
            dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)! as String
           // print("*****This is the data 4: \(String(describing: dataString))") //JSONSerialization
            
            
            
        }
        task.resume()
        return dataString
    }
}
