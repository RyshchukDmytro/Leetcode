//
//  1528. Shuffle String.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/17/24.
//

import Foundation

class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var customChar = [CustomCharacter]()
        var position = 0
        var result = ""

        for c in s.enumerated() {
            customChar.append(CustomCharacter(char: String(c.element),
                                             position: indices[position]))
            position += 1
        }

        customChar.sort {
            $0.position < $1.position
        }

        for c in customChar {
            result += c.char
        }
        return result
    }
}

struct CustomCharacter {
    let char: String
    let position: Int
}
