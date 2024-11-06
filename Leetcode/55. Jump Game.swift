//
//  55. Jump Game.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/6/24.
//

import Foundation

class JumpGame {
    func canJump(_ nums: [Int]) -> Bool {
        var farthest = 0

        for i in 0..<nums.count {
            if i > farthest {
                return false
            }
            farthest = max(farthest, i + nums[i])
        }

        return farthest >= nums.count - 1
    }
}
