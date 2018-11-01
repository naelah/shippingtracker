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
    let status: String?
    
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
        status = getStatus(code: statusCode ?? "")
        

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


func getStatus(code: String)-> String{
    switch code {
      
    case "ACL" : return "Cleared Customs Automatic"
    case "AFC" : return "Automatic FDCA Confirmation"
    case "AHD" : return "Airline Hold"
    case "AHL" : return "Automatic Hold"
    case "AHR" : return "Airline Hold Removed"
    case "AIM" : return "Authorized Inbond Movement"
    case "ALX" : return "Authorized Local Transfer"
    case "ANS" : return "Arrived in nonequipped station"
    case "AWA" : return "Document Available"
    case "AWD" : return "Documents Delivered to Customer"
    case "AWR" : return "Air waybill Registered"
    case "BKD" : return "Booked"
    case "CCD" : return "Cleared Customs"
    case "CIE" : return "CheckedIn Express"
    case "CIU" : return "CheckIn of Breakdown ULD"
    case "CRC" : return "Reported to Customs"
    case "DDL" : return "Door Delivered"
    case "DEP" : return "Flight Departed"
    case "DIS" : return "Discrepancy"
    case "DLM" : return "Delivery Manifested"
    case "DLV" : return "Delivered"
    case "DOE" : return "Documents Exported"
    case "DOS" : return "Delivered on Substitute Air Waybill"
    case "FBA" : return "FDCA Balanced"
    case "FBW" : return "Forwarded to a Bonded Warehouse"
    case "FDC" : return "Confirmed FDCA"
    case "FDD" : return "FDCA Decrease"
    case "FDI" : return "FDCA Increase"
    case "FDR" : return "FDCA Rejected"
    case "FPS" : return "Goods Stored"
    case "GND" : return "Goods Not Delivered"
    case "GRE" : return "Goods Returned"
    case "INA" : return "In Customs Automatic"
    case "LOC" : return "Location Change"
    case "MAN" : return "Manifested (Assigned to Flight)"
    case "MSB" : return "MSCA Balanced"
    case "MSC" : return "Confirmed MSCA"
    case "MSD" : return "MSCA Decreased"
    case "MSR" : return "MSCA Rejected"
    case "MSU" : return "Unconfirmed MSCA"
    case "NFD" : return "Customer Notified"
    case "OND" : return "Gone On Delivery"
    case "OVC" : return "Confirmed OVCD"
    case "OVI" : return "OVCD Increased"
    case "OVR" : return "OVCD Rejected"
    case "OVU" : return "Unconfirmed OVCD"
    case "PCC" : return "Part Cleared Customs"
    case "PCD" : return "Pieces decreased"
    case "PCI" : return "Pieces Increased"
    case "PRE" : return "Prepared for Loading"
    case "RCC" : return "Conditional Goods Acceptance"
    case "RCD" : return "Documents Received"
    case "RCF" : return "CheckedIn"
    case "RCG" : return "Preliminary Goods Acceptance"
    case "RCS" : return "Goods Accepted"
    case "RCT" : return "Accepted Interline"
    case "RFF" : return "Goods Removed From Flight"
    case "SPI" : return "Surface Pickup"
    case "SSC" : return "Confirmed SSPD"
    case "SSD" : return "SSPD Decreased"
    case "SSI" : return "SPD Increased"
    case "SSR" : return "SSPD Rejected"
    case "SSU" : return "Unconfirmed SSPD"
    case "TFD" : return "Transferred Interline"
    case "TRM" : return "Transfer Manifested"
    case "TXS" : return "Transferred to a surface carrier"
    case "UED" : return "ULD Emptied on Arrival"
    case "UFD" : return "Unconfirmed FDCA"
    case "ULB" : return "ULD Breakdown"
    case "ULE" : return "ULD BreakdownEmpty"
    case "UNA" : return "Unverified Arrival"
    case "WGD" : return "Weight Decrease"
    case "WGI" : return "Weight Increase"
    default: return "error"
        
}
}
