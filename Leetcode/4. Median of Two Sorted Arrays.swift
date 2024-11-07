//
//  4. Median of Two Sorted Arrays.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/7/24.
//

import Foundation

class MedianOfTwoSortedArrays {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var arr = [Int]()
        var na1 = nums1
        var na2 = nums2

        while !na1.isEmpty && !na2.isEmpty {
            if na1[0] <= na2[0] {
                arr.append(na1.removeFirst())
            } else {
                arr.append(na2.removeFirst())
            }
        }

        arr += na1
        arr += na2
        
        if arr.count % 2 == 0 {
            let middle = arr.count / 2
            return Double(arr[middle - 1] + arr[middle]) / 2
        } else {
            return Double(arr[arr.count / 2])
        }
    }
}
