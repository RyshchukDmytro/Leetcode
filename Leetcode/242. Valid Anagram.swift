//
//  242. Valid Anagram.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/3/24.
//

import Foundation

class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDict = [Character: Int]()
        var tDict = [Character: Int]()
        
        for c in s {
            sDict[c, default: 0] += 1
        }

        for c in t {
            tDict[c, default: 0] += 1
        }

        return sDict == tDict
    }
}
