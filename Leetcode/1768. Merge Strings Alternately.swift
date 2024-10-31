//
//  1768. Merge Strings Alternately.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/30/24.
//

import Foundation

class MergeStringsAlternately {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var wordArr1 = Array(word1)
        var wordArr2 = Array(word2)
        var result = ""
        
        while !wordArr1.isEmpty && !wordArr2.isEmpty {
            result += String(wordArr1.removeFirst())
            result += String(wordArr2.removeFirst())
        }

        if !wordArr1.isEmpty {
            result += wordArr1
        } else if !wordArr2.isEmpty {
            result += wordArr2
        }

        return result
    }
}
