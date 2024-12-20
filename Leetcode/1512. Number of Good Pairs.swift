//
//  1512. Number of Good Pairs.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/19/24.
//

import Foundation

class NumberOfGoodPairs {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var value = 0

        for f in 0..<nums.count {
            for s in 0..<nums.count {
                if f < s && nums[f] == nums[s] {
                    value += 1
                }
            }
        }

        return value
    }
}
