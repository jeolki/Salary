//
//  NumberWorkDay.swift
//  Wolgeup
//
//  Created by Jeonggi Hong on 2022/02/18.
//

import Foundation

enum weekday {
    case sunday
    case monday
    case tuseday
    case wednesday
    case thursday
    case friday
    case saturday
}

struct NumberWorkingDays {
    
    var beforeWorkngDays: Int
    var afterWorkingDays: Int
    var totalWorkingDays: Int
    
}

class WorkingDay {
    
    var wolgeup = Wolgeup(day: 10, money: 2000000, startHour: 9, startMin: 00, endHour: 18, endMin: 00, workingDay: [.sunday: false, .monday: true, .tuseday:true, .wednesday: true, .thursday: true, .friday: true, .saturday: false])
    
    func calculationWorkingDay(wolgeup: Wolgeup) {
        
        
        
    }
    
    
}
