//
//  74. Search a 2D Matrix.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/21/25.
//

import Foundation

class SearchA2DMatrix {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        let rows = matrix.count
        let cols = matrix[0].count
        var left = 0
        var right = rows * cols - 1

        while left <= right {
            let mid = left + (right - left) / 2
            let row = mid / cols
            let col = mid % cols
            let midValue = matrix[row][col]

            if midValue == target {
                return true
            } else if midValue < target {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }

        return false
    }
}
