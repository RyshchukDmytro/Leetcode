//
//  150. Evaluate Reverse Polish Notation.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class EvaluateReversePolishNotation {
    func evalRPN(_ tokens: [String]) -> Int {
        var arr = [Int]()

        for elem in tokens {
            if let num = Int(elem) {
                arr.append(num)
            } else {
                let second = arr.removeLast()
                let first = arr.removeLast()
                if elem == "+" {
                    arr.append(first + second)
                } else if elem == "-" {
                    arr.append(first - second)
                } else if elem == "/" {
                    arr.append(first / second)
                } else if elem == "*" {
                    arr.append(first * second)
                }
            }
        }

        return arr[0]
    }
}
