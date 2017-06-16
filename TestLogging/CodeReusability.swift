//
//  CodeReusability.swift
//  MClub
//
//  Created by mukesh on 29/07/16.
//  Copyright © 2016 CodersUnlimited. All rights reserved.
//

import UIKit
import SystemConfiguration.CaptiveNetwork

public class CodeReusability: NSObject {
   //get current date and time
    public func getRefererId() -> NSString
    {
        var currentDate:NSString=""
        let formatter=DateFormatter()
        formatter.dateFormat="ddMMyyyyhhmm"
        currentDate=formatter.string(from: Date()) as NSString
        return currentDate
    }
    //to display alert message in common class
    public func displayAlertView(_ alertMessage:NSString,alertDisplayView:UIViewController)
    {
        let alertController = UIAlertController(title: "Eye Drop Reminder Lite", message: alertMessage as String, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
        }
        alertController.addAction(OKAction)
        alertDisplayView.present(alertController, animated: true, completion:nil)
    }
    //to get device wifi ssid
    public func fetchSSIDInfo() ->  String {
        var currentSSID = ""
        if let interfaces = CNCopySupportedInterfaces() as NSArray? {
            if interfaces.count>0 {
                //if let interfaces = CNCopySupportedInterfaces() as NSArray? {
                for interface in interfaces {
                    if let interfaceInfo = CNCopyCurrentNetworkInfo(interface as! CFString) as NSDictionary? {
                        if let ssid = interfaceInfo[kCNNetworkInfoKeySSID as String] as? NSString {
                            currentSSID = ssid as String
                        }
                        //  break
                    }
                }
                //}
            }
        }
        return currentSSID
    }
}
