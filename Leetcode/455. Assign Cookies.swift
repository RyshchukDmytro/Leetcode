//
//  455. Assign Cookies.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/8/24.
//

import Foundation

class AssignCookies {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var sortedG = g.sorted()
        var sortedS = s.sorted()

        var count = 0
        var greedy = 0
        var cookies = 0

        while greedy < sortedG.count && cookies < sortedS.count {
            if sortedS[cookies] >= sortedG[greedy] {
                count += 1
                greedy += 1
            }
            cookies += 1
        }

        return count
    }
}
