//
//  326. Power of Three.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/2/24.
//

import Foundation

class PowerOfThree {
    func isPowerOfThree(_ n: Int) -> Bool {
        var num = 1

        while num < n {
            num *= 3
        }

        return num == n
    }
}
