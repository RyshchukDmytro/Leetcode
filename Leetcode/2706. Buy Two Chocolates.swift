//
//  2706. Buy Two Chocolates.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/31/24.
//

import Foundation

class BuyTwoChocolates {
    func buyChoco(_ prices: [Int], _ money: Int) -> Int {
        let sorted = prices.sorted()
        let dif = money - sorted[0] - sorted[1]
        return dif >= 0 ? dif : money
    }
    
    func buyChocoSecondOption(_ prices: [Int], _ money: Int) -> Int {
        var min1 = Int.max
        var min2 = Int.max

        for price in prices {
            if price < min1 {
                min2 = min1
                min1 = price
            } else if price < min2 {
                min2 = price
            }
        }

        let dif = money - min1 - min2
        return dif >= 0 ? dif : money
    }
}
