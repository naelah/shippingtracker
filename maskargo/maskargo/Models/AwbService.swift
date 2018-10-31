//
//  AwbService.swift
//  maskargo
//
//  Created by Naelah on 30/10/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import Foundation
import Alamofire


class AwbService{
    let awbAPIKey: String
    let awbBaseURL: URL?
    let awbHeaders: HTTPHeaders
    
    init(APIKey: String)
    {
        self.awbAPIKey = APIKey
        awbHeaders = ["Ocp-Apim-Subscription-Key": APIKey]
        awbBaseURL = URL(string: "https://mabapi.azure-api.net/mhkargo/v1/getawb?awbno=")
    }
    
    func getAwbDemo(completion: @escaping(Awb?)-> Void){
        let awbResults = Awb(awbDictionary:awb_response)
        print(awb_response)
        completion(awbResults)
        
    }
    
    func getAwb(awb: String,completion: @escaping (Awb?) -> Void){
        
        if let awbURL = URL(string: "\(awbBaseURL!)\(awb)") {
            //let awb = "23264780435"
            let awbResults = Awb(awbDictionary:awb_response)
            completion(awbResults)
            
            Alamofire.request(awbURL, method: .get, headers: awbHeaders).responseJSON(completionHandler: { (response) in

                guard let json = response.result.value as? [String: Any] else {
                    print("didn't get todo object as JSON from API")
                    print("Error: \(String(describing: response.result.error))")
                    return
                }
                if let jsonDictionary = json as? [String:Any] {
                    if let awbDictionary = jsonDictionary  as? [String:Any] {
                        let awbResults = Awb(awbDictionary: awbDictionary)
                        print("succesfully received data from API")
                        print(awbDictionary)
                        completion(awbResults)
                    } else {
                        completion(nil)
                    }
                }

            })
        }
    }
}
