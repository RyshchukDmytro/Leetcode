//
//  1470. Shuffle the Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/22/24.
//

import Foundation

class ShuffleTheArray {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        var position = 0

        for i in 0..<nums.count {
            if i == n {
                return result
            }

            result.append(nums[i])
            result.append(nums[i+n])
        }

        return result
    }
}
