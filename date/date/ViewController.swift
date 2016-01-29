//
//  ViewController.swift
//  date
//
//  Created by  NorthCity on 16/1/29.
//  Copyright © 2016年  NorthCity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let dateFormatter:NSDateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "EEE, dd MMM yyyy HH:mm:ss"
        dateFormatter.locale = NSLocale(localeIdentifier: "en_US")
        
        let gmtZone:NSTimeZone = NSTimeZone(abbreviation: "GMT")!
        
        dateFormatter.timeZone = gmtZone


        let timeStamp:String = "\(dateFormatter.stringFromDate(NSDate()))"
        
        
        print("Time Stamp: \(timeStamp)")
        let format:NSDateFormatter = NSDateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        format.locale = NSLocale.currentLocale()
        print(format.stringFromDate(NSDate()))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

