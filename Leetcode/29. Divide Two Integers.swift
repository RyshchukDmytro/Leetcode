//
//  29. Divide Two Integers.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/5/24.
//

import Foundation

class DivideTwoIntegers {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        let result = dividend / divisor
        if result >= 2147483648 {
            return 2147483647
        }
        return result
    }
}
