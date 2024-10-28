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
                arr.append(current%10)
                remainder += 1
            } else {
                arr.append(current)
            }
        }

        if remainder != 0 {
            arr.append(remainder)
        }

        var newArr = [Int]()
        for num in arr {
            newArr.insert(num, at: 0)
        }

        return newArr
    }
}
