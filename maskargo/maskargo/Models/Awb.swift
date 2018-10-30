//
//  AWB.swift
//  maskargo
//
//  Created by Naelah on 30/10/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import Foundation

class Awb{
    
    let awbNumber: String?
    let errorDescription: String?
    let origin: String?
    let destination: String?
    let product: String?
    let awbStatus: [[String: String]]
    
    struct awbKeys {
        static let awbNumber = "awbNumber"
        static let errorDescription = "errorDescription"
        static let origin = "origin"
        static let destination = "destination"
        static let product = "product"
        static let awbStatus = "awbStatus"
    }
    init(awbDictionary: [String : Any]){
        
        awbNumber = awbDictionary[awbKeys.awbNumber] as? String
        errorDescription = awbDictionary[awbKeys.errorDescription] as? String
        origin = awbDictionary[awbKeys.origin] as? String
        destination = awbDictionary[awbKeys.destination] as? String
        product = awbDictionary[awbKeys.product] as? String
        awbStatus = (awbDictionary[awbKeys.awbStatus] as? [[String:String]])!
        
    }
}


//    "awbNumber": "23264780435",
//    "errorDescription": null,
//    "origin": "PEK",
//    "destination": "PEN",
//    "product": "20KG DEXAMETHASONE",
//    "awbStatus": [{:}]
//
