//
//  214. Shortest Palindrome.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/16/25.
//

import Foundation

class ShortestPalindrome {
    func shortestPalindrome(_ s: String) -> String {
        var first = Array(s)
        var second = Array(s.reversed())

        if first == second {
            return s
        }

        var indx = 0
        while first != second {
            first.removeLast()
            second.removeFirst()
            indx += 1
        }

        let smallArr = Array(s.reversed())
        var smallStr = ""

        for i in 0..<indx {
            smallStr += String(smallArr[i])
        }

        return smallStr + s
    }
}
