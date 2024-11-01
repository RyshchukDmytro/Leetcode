//
//  7. Reverse Integer.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/31/24.
//

import Foundation

class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        var str = ""
        var num = x >= 0 ? x : x * -1

        while num > 0 {
            str += String(num % 10)
            num /= 10
        }

        let result = Int(str) ?? 0
        let limits = result > 2147483648 ? 0 : result

        return x >= 0 ? limits : limits * -1
    }
}
