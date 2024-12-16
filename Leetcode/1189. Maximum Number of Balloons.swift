//
//  1189. Maximum Number of Balloons.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/16/24.
//

import Foundation

class MaximumNumberOfBalloons {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var dict = [Character: Int]()
        for c in text {
            dict[c, default: 0] += 1
        }
        
        let min1 = min(dict["b"] ?? 0, dict["a"] ?? 0, dict["n"] ?? 0)
        let min2 = min(dict["l"] ?? 0, dict["o"] ?? 0) / 2

        return min(min1, min2)
    }
}
