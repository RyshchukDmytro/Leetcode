//
//  1137. N-th Tribonacci Number.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/27/24.
//

import Foundation

class NthTribonacciNumber {
    func tribonacci(_ n: Int) -> Int {
        var arr = [0, 1, 1]

        if n < 3 {
            return arr[n]
        }
        
        for i in 3...n {
            arr.append(arr[i-3] + arr[i-2] + arr[i-1])
        }

        return arr[n]
    }
}
