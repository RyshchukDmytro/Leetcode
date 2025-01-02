//
//  1732. Find the Highest Altitude.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/1/25.
//

import Foundation

class FindTheHighestAltitude {
    func largestAltitude(_ gain: [Int]) -> Int {
        var previousNumber = 0
        var newArray = [0]

        for i in gain {
            newArray.append(previousNumber + i)
            previousNumber = previousNumber + i
        }

        let result = newArray.sorted()
        return result.last ?? 0
    }
}
