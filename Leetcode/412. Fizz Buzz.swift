//
//  412. Fizz Buzz.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/5/24.
//

import Foundation

class FizzBuzz {
    func fizzBuzz(_ n: Int) -> [String] {
        var arr = [String]()

        for i in 1...n {
            if i % 3 == 0 && i % 5 == 0 {
                arr.append("FizzBuzz")
            } else if i % 3 == 0 {
                arr.append("Fizz")
            } else if i % 5 == 0 {
                arr.append("Buzz")
            } else {
                arr.append(String(i))
            }
        }

        return arr
    }
}
