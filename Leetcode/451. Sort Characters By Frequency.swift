//
//  451. Sort Characters By Frequency.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/7/24.
//

import Foundation

class SortCharactersByFrequency {
    func frequencySort(_ s: String) -> String {
        var dict = [Character: Int]()
        var index = 0
        var str = ""

        for c in s {
            dict[c, default: 0] += 1
        }

        for (key, value) in dict {
            index = max(index, value)
        }

        while index > 0 {
            for (key, value) in dict {
                if index == value {
                    for _ in 0..<index {
                        str += String(key)
                    }
                }
            }
            index -= 1
        }

        return str
    }
}
