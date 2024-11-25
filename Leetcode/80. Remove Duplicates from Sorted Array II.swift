//
//  80. Remove Duplicates from Sorted Array II.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/24/24.
//

import Foundation

class RemoveDuplicatesFromSortedArrayII {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var dict = [Int: Int]()

        for i in 0..<nums.count {
            dict[nums[i], default: 0] += 1

            if let time = dict[nums[i]], time > 2 {
                nums[i] = Int.max
            }
        }

        nums = nums.filter { $0 != Int.max }

        return nums.count
    }
}
