//
//  1. Two Sum.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/29/24.
//

import Foundation

// Beats 62% O(N), O(N)
class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (i, val) in nums.enumerated() {
            if let j = dict[target - nums[i]] {
                return [j, i]
            }
            dict[val] = i
        }

        return []
    }
}
