//
//  151. Reverse Words in a String.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/20/24.
//

import Foundation

class ReverseWordsInAString {
    func reverseWords(_ s: String) -> String {
        var result = ""
        var str = s.split(separator: " ")
        for word in str {
            result += str.removeLast() + " "
        }
        result.removeLast()

        return result
    }
}
