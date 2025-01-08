//
//  746. Min Cost Climbing Stairs.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/8/25.
//

import Foundation

class Solution {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var first = cost[0]
        var second = cost[1]

        for i in 2..<cost.count {
            let third = cost[i] + min(first, second)
            first = second
            second = third
        }

        return min(first, second)
    }
}


/*
func minCostClimbingStairs(_ cost: [Int]) -> Int {
        let count = cost.count

        if count == 1 {
            return cost[0]
        }

        var dp = Array(repeating: 0, count: count)
        dp[0] = cost[0]
        dp[1] = cost[1]

        for i in 2..<count {
            dp[i] = cost[i] + min(dp[i - 1], dp[i - 2])
        }

        return min(dp[count - 1], dp[count - 2])
    }
}
*/
