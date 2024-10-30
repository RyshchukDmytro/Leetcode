//
//  69. Sqrt(x).swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/29/24.
//

import Foundation

class Sqrt {
    func mySqrt(_ x: Int) -> Int {
        var result = 1

        while result * result < x {
            result += 1
        }

        if result * result > x {
            return result - 1
        }

        return result
    }
}
