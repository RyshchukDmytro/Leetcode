//
//  28. Find the Index of the First Occurrence in a String.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/13/24.
//

import Foundation

class FindTheIndexOfTheFirstOccurrenceInAString {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var position = 0
        var str = haystack

        if str.contains(needle) {
            while !str.hasPrefix(needle) {
                str.removeFirst()
                position += 1
            }
        } else {
            return -1
        }

        return position
    }
}
