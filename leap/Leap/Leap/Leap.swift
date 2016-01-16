//
//  Leap.swift
//  Leap
//
//  Created by Jen Trudell on 1/16/16.
//  Copyright © 2016 Jen Trudell. All rights reserved.
//

import Foundation

class Year {
    
    var enteredYear: Int
    
    init(calendarYear year: Int) {
        enteredYear = year
    }
    
    func isLeapYear() -> Bool {
        if ((enteredYear % 4 == 0) && (enteredYear % 100 != 0)) {
            return true
        } else if (enteredYear % 400 == 0) {
            return true
        }
        return false
    }
    
}