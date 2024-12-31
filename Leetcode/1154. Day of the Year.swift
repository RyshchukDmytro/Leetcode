//
//  1154. Day of the Year.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/31/24.
//

import Foundation

class DayOfTheYear {
    func dayOfYear(_ date: String) -> Int {
        var months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        var year = Int(date.split(separator: "-")[0]) ?? 0
        var month = Int(date.split(separator: "-")[1]) ?? 0
        var day = Int(date.split(separator: "-")[2]) ?? 0
        var result = 0

        if year != 1900 && year % 4 == 0 && month > 2 {
            result = 1
        }

        for days in 0..<month {
            result += months[days]
        }

        result += day

        return result
    }
}
