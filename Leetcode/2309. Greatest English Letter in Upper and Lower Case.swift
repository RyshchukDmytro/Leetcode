//
//  2309. Greatest English Letter in Upper and Lower Case.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/29/24.
//

import Foundation

class GreatestEnglishLetterInUpperAndLowerCase {
    func greatestLetter(_ s: String) -> String {
        var dict = [UInt8: Int]()
        var charArr = [String]()

        for c in s {
            let current = UInt8(c.asciiValue ?? 0)
            dict[current, default: 0] += 1
            if dict[current - 32] != nil || dict[current + 32] != nil {
                charArr.append(c.uppercased())
            }
        }

        charArr.sort()
        return charArr.last ?? ""
    }
}
