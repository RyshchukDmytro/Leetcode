//
//  392. Is Subsequence.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/3/24.
//

import Foundation

class IsSubsequence {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0
        var j = 0

        var sArr = Array(s)
        var tArr = Array(t)

        while i < sArr.count && j < tArr.count {
            if sArr[i] == tArr[j] {
                i += 1
            }
            j += 1
        }

        return i == s.count
    }
}
