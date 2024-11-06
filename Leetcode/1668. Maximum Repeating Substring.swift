//
//  1668. Maximum Repeating Substring.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/6/24.
//

import Foundation

class MaximumRepeatingSubstring {
    func maxRepeating(_ sequence: String, _ word: String) -> Int {
        var repeatedWord = word
        var times = 0

        while sequence.contains(repeatedWord) {
            times += 1
            repeatedWord += word
        }

        return times
    }
}
