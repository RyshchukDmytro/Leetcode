//
//  231. Power of Two.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/29/24.
//

import Foundation

class PowerOfTwo {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var result = 1

        while result < n {
            result *= 2
        }

        return result == n
    }
}
