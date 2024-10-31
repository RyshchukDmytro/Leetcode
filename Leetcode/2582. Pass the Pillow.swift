//
//  2582. Pass the Pillow.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/30/24.
//

import Foundation

class PassThePillow {
    func passThePillow(_ n: Int, _ time: Int) -> Int {
        var person = 0
        var isPositive = true

        for i in 0...time {
            if isPositive {
                person += 1
            } else {
                person -= 1
            }
            if person >= n {
                isPositive = false
            }
            if person <= 1 {
                isPositive = true
            }
        }

        return person
    }
}
