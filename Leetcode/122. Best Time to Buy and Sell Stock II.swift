//
//  122. Best Time to Buy and Sell Stock II.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/18/25.
//

import Foundation

class BestTimeToBuyAndSellStockII {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        
        for i in 1..<prices.count {
            if prices[i] > prices[i - 1] {
                profit += prices[i] - prices[i-1]
            }
        }

        return profit
    }
}
