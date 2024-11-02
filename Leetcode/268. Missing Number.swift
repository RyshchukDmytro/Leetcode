//
//  268. Missing Number.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/2/24.
//

import Foundation

class MissingNumber {
    // MARK: - Short variant
    func missingNumber(_ nums: [Int]) -> Int {
        var targetSum = (0...nums.count).reduce(0, +)
        var arrSum = nums.reduce(0, +)

        return targetSum - arrSum
    }

    // MARK: - Long variant
    func missingNumberSecond(_ nums: [Int]) -> Int {
        var arr = [Int]()
        var numsArr = nums.sorted()

        for i in 0...nums.count {
            arr.append(i)
        }

        for i in 0..<numsArr.count {
            if numsArr[i] != arr[i] {
                return arr[i]
            }
        }

        return arr.last ?? 0
    }
}
