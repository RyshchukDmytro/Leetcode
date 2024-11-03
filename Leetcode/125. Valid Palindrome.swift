//
//  125. Valid Palindrome.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/3/24.
//

import Foundation

class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        let str = s.lowercased().filter { $0.isLetter || $0.isNumber }

        return str == String(str.reversed())
    }
}
