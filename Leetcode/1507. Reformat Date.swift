//
//  1507. Reformat Date.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/30/24.
//

import Foundation

class ReformatDate {
    func reformatDate(_ date: String) -> String {
        
        let months = ["Jan": "01", "Feb": "02", "Mar": "03", "Apr": "04", "May": "05", "Jun": "06",
                      "Jul": "07", "Aug": "08", "Sep": "09", "Oct": "10", "Nov": "11", "Dec": "12"]
        let customDate = date.split(separator: " ")
        let year = Int(customDate[2])!
        let month = months[String(customDate[1])]!
        var day = Int(customDate[0].dropLast(2))!
        let strDay = day < 10 ? "0\(day)" : String(day)
        
        return "\(year)-\(month)-\(strDay)"
    }
}
