//
//  169. Majority Element.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/17/25.
//

import Foundation

class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var biggest = (value: 0, times: 0)

        for n in nums {
            var times = dict[n] ?? 0
            dict[n] = times + 1
        }

        for times in dict {
            if biggest.times < times.value {
                biggest.value = times.key
                biggest.times = times.value
            }
        }
        return biggest.value
    }
}
