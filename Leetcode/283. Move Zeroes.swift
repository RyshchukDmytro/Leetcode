//
//  283. Move Zeroes.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/22/24.
//

import Foundation

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroArr = [Int]()
        var numbersArr = [Int]()

        for num in nums {
            if num == 0 {
                zeroArr.append(num)
            } else {
                numbersArr.append(num)
            }
        }

        nums = numbersArr + zeroArr
    }
}
