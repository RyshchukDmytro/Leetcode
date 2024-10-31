//
//  121. Best Time to Buy and Sell Stock.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/30/24.
//

import Foundation

class BestTimeToBuyAndSellStock {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0
        var minPrice = Int.max

        for price in prices {
            minPrice = min(minPrice, price)
            maxProfit = max(maxProfit, price - minPrice)
        }

        return maxProfit
    }
}
