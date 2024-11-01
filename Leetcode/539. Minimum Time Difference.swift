//
//  539. Minimum Time Difference.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/31/24.
//

import Foundation

class MinimumTimeDifference {
    func separate(_ str: String) -> Int {
        let arr = str.components(separatedBy: ":")
        guard let hours = Int(arr[0]),
          let minutes = Int(arr[1]) else { return 0}

        return hours * 60 + minutes
    }

    func findMinDifference(_ timePoints: [String]) -> Int {
        var arr = timePoints.map { separate($0) }
        arr.sort()
        
        var minDif = Int.max
        let minutesInDay = 1440

        for i in 1..<arr.count {
            minDif = min(minDif, arr[i] - arr[i - 1])
        }

        minDif = min(minDif, minutesInDay - (arr.last! - arr.first!))

        return minDif
    }
}
