//
//  AwbStatus.swift
//  maskargo
//
//  Created by Naelah on 30/10/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//

import Foundation

class AwbStatus{
    let statusCode: String?
    let station: String?
    let agent: String?
    let pieces: String?
    let location: String?
    let weight: String?
    let localTime: String?
    let localDate: String?
    let gmtDate: String?
    let gmtTime: String?
    let flight: String?
    
    struct awbKeys{
        static let statusCode = "statusCode"
        static let station = "station"
        static  let agent = "agent"
        static let pieces = "pieces"
        static let location = "location"
        static let weight = "weight"
        static let localTime = "localTime"
        static let localDate = "localDate"
        static let gmtDate = "gmtDate"
        static let gmtTime = "gmtTime"
        static let flight = "flight"
    }
    
    init(awbStat: [String:String]){
    
        statusCode = awbStat[awbKeys.statusCode]
        station = awbStat[awbKeys.station]
        agent = awbStat[awbKeys.agent]
        pieces = awbStat[awbKeys.pieces]
        weight = awbStat[awbKeys.weight]
        localTime = awbStat[awbKeys.localTime]
        localDate = awbStat[awbKeys.localDate]
        gmtDate = awbStat[awbKeys.gmtDate]
        gmtTime = awbStat[awbKeys.gmtTime]
        

        if let loc_res = awbStat[awbKeys.flight] {
        location = loc_res
    } else {
        location = nil
    }
        
        if let flight_res = awbStat[awbKeys.flight] {
        flight = flight_res
    } else {
        flight = nil
    }
    
        
    }

}


//    "statusCode": "RCS",
//    "station": "PEK",
//    "agent": "MH8610233",
//    "pieces": "2.0",
//    "location": "1EXPORT",
//    "weight": "45.0",
//    "localDate": "12SEP",
//    "localTime": "2205",
//    "gmtDate": "12SEP",
//    "gmtTime": "1406",
//    "flight": null

