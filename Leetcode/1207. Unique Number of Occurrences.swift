//
//  1207. Unique Number of Occurrences.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/15/24.
//

import Foundation

class UniqueNumberOfOccurrences {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
        var occur = [Int: Int]()
        var index = 0
        var isUniq = true

        for i in arr {
            occur[i, default: 0] += 1
        }

        for (key, value) in occur {
            index = max(index, value)
        }

        while index > 0 {
            for (key, value) in occur {
                if index == value {
                    if !isUniq {
                        return false
                    }
                    isUniq = false
                }
            }
            isUniq = true
            index -= 1
        }
        
        return true
    }
}
