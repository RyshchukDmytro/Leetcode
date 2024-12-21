//
//  1431. Kids With the Greatest Number of Candies.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/21/24.
//

import Foundation

class KidsWithTheGreatestNumberOfCandies {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result = [Bool]()
        var sortedArr = candies.sorted()
        var greatest = sortedArr.last ?? 0

        for i in candies {
            i + extraCandies >= greatest ? result.append(true) : result.append(false)
        }

        return result
    }
}
