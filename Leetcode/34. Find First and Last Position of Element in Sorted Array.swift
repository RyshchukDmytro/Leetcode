//
//  34. Find First and Last Position of Element in Sorted Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/14/24.
//

import Foundation

class FindFirstAndLastPositionOfElementInSortedArray {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        let first = findPosition(nums, target, findFirst: true)
        let last = findPosition(nums, target, findFirst: false)
        return [first, last]
    }

    func findPosition(_ nums: [Int], _ target: Int, findFirst: Bool) -> Int {
        var left = 0
        var right = nums.count - 1
        var position = -1

        while left <= right {
            let mid = left + (right - left) / 2

            if nums[mid] == target {
                position = mid

                if findFirst {
                    right = mid - 1
                } else {
                    left = mid + 1
                }
            } else if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return position
    }
}
