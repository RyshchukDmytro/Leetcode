//
//  20. Valid Parentheses.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else {
                if stack.isEmpty {
                    return false
                } else {
                    let last = stack.removeLast()

                    if last == "(" && char != ")" ||
                    last == "{" && char != "}" ||
                    last == "[" && char != "]" {
                        return false
                    }
                }
            }
        }
        return stack.isEmpty
    }
}
