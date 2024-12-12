//
//  561. Array Partition.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/11/24.
//

import Foundation

class ArrayPartition {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var multiArr = [[Int]]()
        var previousValue = 0
        var isAppendNow = false

        for elem in nums.sorted() {
            if isAppendNow {
                multiArr.append([previousValue, elem])
                isAppendNow = false
            } else {
                previousValue = elem
                isAppendNow = true
            }
        }

        var result = 0
        for arr in multiArr {
            result += min(arr[0], arr[1])
        }

        return result
    }
}
