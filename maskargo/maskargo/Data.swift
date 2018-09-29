//
//  Data.swift
//  maskargo
//
//  Created by Naelah on 18/09/2018.
//  Copyright © 2018 Ideate. All rights reserved.
//
//jsonObject: [String: Any]
let awb_response: [String: Any] = [
    "awbNumber": "23264780435",
    "errorDescription": "null",
    "origin": "PEK",
    "destination": "PEN",
    "product": "20KG DEXAMETHASONE",
    "awbStatus": [[
    "statusCode": "RCS",
    "station": "PEK",
    "agent": "1E",
    "pieces": "2.0",
    "location": "PEKFM1E",
    "weight": "45.0",
    "localDate": "12SEP",
    "localTime": "1748",
    "gmtDate": "12SEP",
    "gmtTime": "0949",
    "flight": "null"
    ], [
    "statusCode": "RCS",
    "station": "PEK",
    "agent": "MH8610233",
    "pieces": "2.0",
    "location": "1EXPORT",
    "weight": "45.0",
    "localDate": "12SEP",
    "localTime": "2205",
    "gmtDate": "12SEP",
    "gmtTime": "1406",
    "flight": "null"
    ], [
    "statusCode": "LOC",
    "station": "PEK",
    "agent": "MH8610233",
    "pieces": "2.0",
    "location": "PAG32303MH",
    "weight": "45.0",
    "localDate": "12SEP",
    "localTime": "2209",
    "gmtDate": "12SEP",
    "gmtTime": "1410",
    "flight": "null"
    ], [
    "statusCode": "MAN",
    "station": "PEK",
    "agent": "MH8610233",
    "pieces": "2.0",
    "location": "PAG32303MH",
    "weight": "45.0",
    "localDate": "12SEP",
    "localTime": "2216",
    "gmtDate": "12SEP",
    "gmtTime": "1417",
    "flight": "MH361/13SEP"
    ], [
    "statusCode": "DEP",
    "station": "PEK",
    "agent": "PERMANENT",
    "pieces": "2.0",
    "location": "PAG32303MH",
    "weight": "45.0",
    "localDate": "13SEP",
    "localTime": "0305",
    "gmtDate": "12SEP18",
    "gmtTime": "1906",
    "flight": "MH361/13SEP"
    ], [
    "statusCode": "DEP",
    "station": "PEK",
    "agent": "1E",
    "pieces": "2.0",
    "location": "PEKFM1E",
    "weight": "45.0",
    "localDate": "13SEP",
    "localTime": "1034",
    "gmtDate": "13SEP",
    "gmtTime": "0235",
    "flight": "MH361/13SEP"
    ], [
    "statusCode": "AWA",
    "station": "KUL",
    "agent": "VF140055K",
    "pieces": "2.0",
    "location": "null",
    "weight": "45.0",
    "localDate": "13SEP",
    "localTime": "0514",
    "gmtDate": "12SEP18",
    "gmtTime": "2115",
    "flight": "MH361/13SEP"
    ]]
]
let flight_xml = "<REQUEST SERVICENAME=\"WTX_SERV_EDFLTI\" WSTOKEN=\"k7sWq9qFUa\"> <EDFLTI-INP> <SVCHEADER> <STATION>KUL</STATION> <OFFICE>001</OFFICE> <AGENT>202</AGENT> <LANGUAGE>LAN1</LANGUAGE> <USERLEVEL> <ULEVEL1>Y</ULEVEL1> <ULEVEL2>Y</ULEVEL2><ULEVEL3>Y</ULEVEL3><ULEVEL4>Y</ULEVEL4> <ULEVEL5>Y</ULEVEL5><ULEVEL6>Y</ULEVEL6><ULEVEL7>N</ULEVEL7><ULEVEL8>N</ULEVEL8><ULEVEL9>N</ULEVEL9></USERLEVEL></SVCHEADER><SVCACTION>UPDATE</SVCACTION><FLTINFO><FLIGHT>MH004</FLIGHT><DATE>01AUG18></DATE></FLTINFO><ORIGIN>KUL</ORIGIN><DEST>AOR</DEST><TIMEMODE>L</TIMEMODE><OPTION>a</OPTION> <UPDATE><OUT>0745</OUT><OFF>0807</OFF></UPDATE></EDFLTI-INP></REQUEST>"

let awb_json = "{\"awbNumber\": \"23264780435\",\"errorDescription\": null,\"origin\": \"PEK\",\"destination\": \"PEN\",\"product\": \"20KG DEXAMETHASONE\",\"awbStatus\": [{\"statusCode\": \"RCS\",\"station\": \"PEK\",\"agent\": \"1E\",\"pieces\": \"2.0\",\"location\": \"PEKFM1E\",\"weight\": \"45.0\",\"localDate\": \"12SEP\",\"localTime\": \"1748\",\"gmtDate\": \"12SEP\",\"gmtTime\": \"0949\",\"flight\": null}, {\"statusCode\": \"RCS\",\"station\": \"PEK\",\"agent\": \"MH8610233\",\"pieces\": \"2.0\",\"location\": \"1EXPORT\",\"weight\": \"45.0\",\"localDate\": \"12SEP\",\"localTime\": \"2205\",\"gmtDate\": \"12SEP\",\"gmtTime\": \"1406\",\"flight\": null}, {\"statusCode\": \"LOC\",\"station\": \"PEK\",\"agent\": \"MH8610233\",\"pieces\": \"2.0\",\"location\": \"PAG32303MH\",\"weight\": \"45.0\",\"localDate\": \"12SEP\",\"localTime\": \"2209\",\"gmtDate\": \"12SEP\",\"gmtTime\": \"1410\",\"flight\": null}, {\"statusCode\": \"MAN\",\"station\": \"PEK\",\"agent\": \"MH8610233\",\"pieces\": \"2.0\",\"location\": \"PAG32303MH\",\"weight\": \"45.0\",\"localDate\": \"12SEP\",\"localTime\": \"2216\",\"gmtDate\": \"12SEP\",\"gmtTime\": \"1417\",\"flight\": \"MH361/13SEP\"}, {\"statusCode\": \"DEP\",\"station\": \"PEK\",\"agent\": \"PERMANENT\",\"pieces\": \"2.0\",\"location\": \"PAG32303MH\",\"weight\": \"45.0\",\"localDate\": \"13SEP\",\"localTime\": \"0305\",\"gmtDate\": \"12SEP18\",\"gmtTime\": \"1906\",\"flight\": \"MH361/13SEP\"}, {\"statusCode\": \"DEP\",\"station\": \"PEK\",\"agent\": \"1E\",\"pieces\": \"2.0\",\"location\": \"PEKFM1E\",\"weight\": \"45.0\",\"localDate\": \"13SEP\",\"localTime\": \"1034\",\"gmtDate\": \"13SEP\",\"gmtTime\": \"0235\",\"flight\": \"MH361/13SEP\"}, {\"statusCode\": \"AWA\",\"station\": \"KUL\",\"agent\": \"VF140055K\",\"pieces\": \"2.0\",\"location\": null,\"weight\": \"45.0\",\"localDate\": \"13SEP\",\"localTime\": \"0514\",\"gmtDate\": \"12SEP18\",\"gmtTime\": \"2115\",\"flight\": \"MH361/13SEP\"}]}"
