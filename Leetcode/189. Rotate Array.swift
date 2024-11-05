//
//  189. Rotate Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/5/24.
//

import Foundation

class RotateArray {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for i in 0..<k {
            nums.insert(nums.removeLast(), at: 0)
        }
    }
}

