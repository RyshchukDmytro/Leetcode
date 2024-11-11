//
//  13. Roman to Integer.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/10/24.
//

import Foundation

class RomanToInteger {
    let dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    let exclusionRules = ["IV": 4, "IX": 9, "XL": 40, "XC": 90, "CD": 400, "CM": 900]
    var year = [String]()
    var result = 0
    
    func romanToInt(_ s: String) -> Int {
        s.forEach {
            year.append(String($0))
        }
        
        for l in 0..<year.count {
            if l > 0, l < year.count, exclusionRules["\(year[l - 1])\(year[l])"] != nil {
                result -= dict[String(year[l - 1])] ?? 0
                result += exclusionRules["\(year[l - 1])\(year[l])"] ?? 0
            } else {
                result += dict[String(year[l])] ?? 0
            }
        }

        return result
    }
}
