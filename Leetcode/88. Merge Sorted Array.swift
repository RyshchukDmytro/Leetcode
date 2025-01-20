//
//  88. Merge Sorted Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/20/25.
//

import Foundation

class MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = (Array(nums1[0..<m]) + Array(nums2[0..<n])).sorted()
    }
}
