//
//  Settings.swift
//  tratata
//
//  Created by Andrii Tishchenko on 19.05.15.
//  Copyright (c) 2015 Andrii Tishchenko. All rights reserved.
//

import Foundation
import UIKit

class Settings: NSObject {
    class func defaultSettings() -> Settings {
        struct T {
            static let instance = Settings()
        }
        
        T.instance.minSpeedValue = T.instance.load("minSpeedValue") as! NSNumber
        T.instance.colorValue = T.instance.load("colorValue") as! UIColor
        
        
        if T.instance.minSpeedValue as NSNumber == NSNull() {
            T.instance.minSpeedValue = NSNumber(double: 10.0);
        }
        
        if T.instance.colorValue as UIColor == NSNull() {
            T.instance.colorValue = UIColor.grayColor()
        }
        
        return T.instance
    }

    var minSpeedValue:NSNumber! {
        didSet{
            self.save("minSpeedValue", value: minSpeedValue)
        }
    }
    var colorValue:UIColor! {
        didSet{
            self.save("colorValue", value: colorValue)
        }
    }
    
    func save(name:String, value:AnyObject){
        let userDefaults = NSUserDefaults.standardUserDefaults()
        var data : NSData = NSKeyedArchiver.archivedDataWithRootObject(value)
        userDefaults.setObject(data, forKey: name)
        userDefaults.synchronize()
    }
    
    func load(name:String)->AnyObject{
        let userDefaults = NSUserDefaults.standardUserDefaults()
        if let data  =  NSUserDefaults.standardUserDefaults().objectForKey(name) as? NSData {
            if let data_obj: AnyObject = NSKeyedUnarchiver.unarchiveObjectWithData(data) {
                return data_obj
            }
        }
        
        return NSNull()
//        
//        if let value: AnyObject = userDefaults.valueForKey(name) {
//            return value;
//        }
//        else {
//            return NSNull()
//        }

    }
}
