//
//  1672. Richest Customer Wealth.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/25/24.
//

import Foundation

class RichestCustomerWealth {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var result = 0

        for array in 0..<accounts.count {
            var totalOnAccount = 0

            for account in accounts[array] {
                totalOnAccount += account
            }

            if totalOnAccount > result {
                result = totalOnAccount
            }
        }

        return result
    }
}
