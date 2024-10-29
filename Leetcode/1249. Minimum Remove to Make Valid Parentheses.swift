//
//  1249. Minimum Remove to Make Valid Parentheses.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/28/24.
//

import Foundation

class MinimumRemoveToMakeValidParentheses {
    func minRemoveToMakeValid(_ s: String) -> String {
        var str = Array(s)
        var subs = [Int]()

        for i in 0..<s.count {
            if str[i] == "(" {
                subs.append(i)
            } else if str[i] == ")" {
                if subs.last != nil {
                    subs.removeLast()
                } else {
                    str[i] = "*"
                }
            }
        }

        for i in subs {
            str[i] = "*"
        }

        return String(str).filter { $0 != "*" }
    }
}
