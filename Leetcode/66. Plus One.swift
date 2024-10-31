//
//  66. Plus One.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class PlusOne {
    func plusOne(_ digits: [Int]) -> [Int] {
        var arr = [Int]()
        var remainder = 1

        for i in digits.reversed() {
            var current = i + remainder
            remainder = 0

            if current > 9 {
                arr.insert(current%10, at: 0)
                remainder += 1
            } else {
                arr.insert(current, at: 0)
            }
        }

        if remainder != 0 {
            arr.insert(remainder, at: 0)
        }

        return arr
    }
}
