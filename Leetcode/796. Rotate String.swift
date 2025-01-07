//
//  796. Rotate String.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/7/25.
//

import Foundation

class RotateString {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        if s.count != goal.count {
            return false
        }

        if s == goal {
            return true
        }

        var times = goal.count
        var strArr = Array(s)
        var goalArr = Array(goal)

        while times > 0 {
            strArr.insert(strArr.removeLast(), at: 0)
            if strArr == goalArr {
                return true
            }
            times -= 1
        }

        return false
    }
}
