//
//  771. Jewels and Stones.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/5/25.
//

import Foundation

class JewelsAndStones {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var result = 0
        var stonesArray = Array(stones)

        for char in stonesArray {
            if jewels.contains(char) {
                result += 1
            }
        }

        return result
    }
}
