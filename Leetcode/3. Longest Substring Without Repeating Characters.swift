//
//  3. Longest Substring Without Repeating Characters.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/9/24.
//

import Foundation

class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var count = 0
        var arr = [Character]()

        if s.isEmpty {
            return 0
        }

        for i in s {
            while arr.contains(i) {
                arr.removeFirst()
            }
            arr.append(i)
            count = max(count, arr.count)
        }

        return count
    }
}
