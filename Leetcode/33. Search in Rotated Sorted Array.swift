//
//  33. Search in Rotated Sorted Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class SearchInRotatedSortedArray {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var times = 0

        for num in nums {
            if target == num {
                return times
            }
            times += 1
        }

        return -1
    }
}
