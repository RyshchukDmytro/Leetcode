//
//  1408. String Matching in an Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/20/24.
//

import Foundation

class StringMatchingInAnArray {
    func stringMatching(_ words: [String]) -> [String] {
        var result = [String]()

        for i in 0..<words.count {
            for j in 0..<words.count {
                if i != j {
                    if words[j].contains(words[i]) {
                        result.append(words[i])
                        break
                    }
                }
            }
        }

        return Array(Set(result))
    }
}
