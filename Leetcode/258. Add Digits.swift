//
//  258. Add Digits.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/2/24.
//

import Foundation

class AddDigits {
    // MARK: - Short solution
    func addDigitsShort(_ num: Int) -> Int {
        1 + (num - 1) % 9
    }
    
    // MARK: - Long solution with String
    func addDigits(_ num: Int) -> Int {
        var arr = String(num).map { String($0) }

        while true {
            var tempResult = 0
            var tempArr = [String]()
            
            for c in arr {
                let num = Int(c) ?? 0
                tempResult += num
            }

            if tempResult < 10 {
                return tempResult
            }

            var tempStr = String(tempResult)

            for c in tempStr {
                let num = String(c)
                tempArr.append(num)
            }
            
            arr = tempArr
        }

        return 0
    }
}
