//
//  1844. Replace All Digits with Characters.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/3/25.
//

import Foundation

class ReplaceAllDigitsWithCharacters {
    func replaceDigits(_ s: String) -> String {
        var result = ""
        var currentLetter = Character(" ")
        
        for c in s {
            if c.isLetter {
                currentLetter = c
                result += String(c)
            } else {
                let number = UInt8(Int(String(c)) ?? 0)
                let unicode = UInt8(currentLetter.asciiValue ?? 0) + number
                let scalar = UnicodeScalar(unicode)
                result += String(Character(scalar))
            }
        }

        return result
    }
}
