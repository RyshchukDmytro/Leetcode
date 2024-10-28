//
//  53. Maximum Subarray.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class MaximumSubarray {
    func maxSubArray(_ nums: [Int]) -> Int {
        var biggest = nums[0]
        var current = nums[0]

        for i in 1..<nums.count {
            current = max(nums[i], current + nums[i])
            biggest = max(biggest, current)
        }

        return biggest
    }
}
