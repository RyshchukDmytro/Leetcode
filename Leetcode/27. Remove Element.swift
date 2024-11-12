//
//  27. Remove Element.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/9/25.
//

import Foundation

class RemoveElement {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        return nums.count
    }
}
