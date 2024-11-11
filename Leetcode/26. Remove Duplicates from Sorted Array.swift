//
//  26. Remove Duplicates from Sorted Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/10/24.
//

import Foundation

class RemoveDuplicatesFromSortedArray {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Set(nums).sorted()
        return nums.count
    }
}
