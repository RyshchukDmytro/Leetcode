//
//  649. Dota2 Senate.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/12/24.
//

import Foundation

class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var radiant = [Int]()
        var dire = [Int]()
        var count = senate.count

        for (index, senator) in senate.enumerated() {
            if senator == "R" {
                radiant.append(index)
            } else {
                dire.append(index)
            }
        }

        while !radiant.isEmpty && !dire.isEmpty {
            let radiantInd = radiant.removeFirst()
            let direInd = dire.removeFirst()

            if radiantInd < direInd {
                radiant.append(radiantInd + count)
            } else {
                dire.append(direInd + count)
            }
        }

        return radiant.isEmpty ? "Dire" : "Radiant"
    }
}
