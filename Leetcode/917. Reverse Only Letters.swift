//
//  917. Reverse Only Letters.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/22/24.
//

import Foundation

class ReverseOnlyLetters {
    func reverseOnlyLetters(_ s: String) -> String {
        var arr = [Character]()
        var str = ""

        for c in s {
            if c.isLetter {
                arr.append(c)
            }
        }

        for c in s {
            str += c.isLetter ? String(arr.removeLast()) : String(c)
        }

        return str
    }
}
