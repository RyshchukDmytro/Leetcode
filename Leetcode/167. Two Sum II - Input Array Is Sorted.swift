//
//  167. Two Sum II - Input Array Is Sorted.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/29/24.
//

import Foundation

class TwoSum2InputArrayIsSorted {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for i in 0..<numbers.count {
            dict[numbers[i]] = i
        }

        for i in 0..<numbers.count {
            if let j = dict[target - numbers[i]] {
                return [i + 1, j + 1]
            }
        }
        return []
    }
}
