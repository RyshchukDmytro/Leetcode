//
//  170. Two Sum III - Data structure design.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/29/24.
//

import Foundation

// Beats 100% O(1), O(N)
class TwoSum3DataStructureDesign {
    private var arr: [Int]

    init() {
        arr = [Int]()
    }
    
    func add(_ number: Int) {
        arr.append(number)
    }
    
    func find(_ value: Int) -> Bool {
        var dict = [Int: Int]()

        for (i, val) in arr.enumerated() {
            if let j = dict[value - arr[i]] {
                return true
            }
            dict[arr[i]] = i
        }
        return false
    }
}

/**
 * Your TwoSum object will be instantiated and called as such:
 * let obj = TwoSum()
 * obj.add(number)
 * let ret_2: Bool = obj.find(value)
 */
