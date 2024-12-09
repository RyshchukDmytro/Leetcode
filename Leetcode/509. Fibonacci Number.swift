//
//  509. Fibonacci Number.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/9/24.
//

import Foundation


class FibonacciNumber {
    func fib(_ n: Int) -> Int {
        var nums = [0, 1]

        for i in 2..<35 {
            nums.append(nums[i - 1] + nums[i - 2])
        }

        return nums[n]
    }
}
