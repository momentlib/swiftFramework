//
//  NSDate+NaturalLanguage.swift
//  momentFramework
//
//  Created by Kevin Musselman on 12/22/15.
//  Copyright © 2015 Kevin Musselman. All rights reserved.
//

import Foundation
import MomentLib

extension NSDate {
    public class func dateFromNaturalLanguage(str:String) -> NSDate {
        let when = (str.lowercaseString as NSString).UTF8String
        let finalTime:Double = parseDateTimeString(when)
        let d = NSDate(timeIntervalSince1970: finalTime)
        return d
    }
}
