//
//  345. Reverse Vowels of a String.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/3/24.
//

import Foundation

class ReverseVowelsOfAString {
    func reverseVowels(_ s: String) -> String {
        var result = ""
        var vowelsArr = [Character]()
        let vowelsCheckArr: [Character] = ["A", "E", "I", "O", "U",
                                           "a", "e", "i", "o", "u"]

        for c in s {
            if vowelsCheckArr.contains(c) {
                vowelsArr.append(c)
                result += "_"
            } else {
                result += String(c)
            }
        }

        var tempArr = Array(result)
        for i in 0..<tempArr.count {
            if tempArr[i] == "_" {
                tempArr[i] = vowelsArr.removeLast()
            }
        }

        return String(tempArr)
    }
}
