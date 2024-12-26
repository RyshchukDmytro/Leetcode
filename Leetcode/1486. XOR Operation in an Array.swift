//
//  1486. XOR Operation in an Array.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/26/24.
//

import Foundation

class XOROperationInAnArray {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var arr = [Int]()

        for i in 0..<n {
            arr.append(start + 2 * i)
        }

        var res = 0
        for i in arr {
            res = res ^ i
        }

        return res
    }
}
