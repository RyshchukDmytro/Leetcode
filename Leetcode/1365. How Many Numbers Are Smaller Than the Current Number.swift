//
//  1365. How Many Numbers Are Smaller Than the Current Number.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/24/24.
//

import Foundation

class HowManyNumbersAreSmallerThanTheCurrentNumber {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var result = [Int]()

        for f in 0..<nums.count {
            var times = 0

            for s in 0..<nums.count {
                if nums[f] > nums[s] {
                    times += 1
                }
            }

            result.append(times)
        }

        return result
    }
}
