//
//  14. Longest Common Prefix.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/11/24.
//

import Foundation

class LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var pref = strs[0]

        for word in strs {
            while !word.hasPrefix(pref) {
                pref.removeLast()
                if pref.isEmpty {
                    return ""
                }
            }
        }

        return pref
    }
}
