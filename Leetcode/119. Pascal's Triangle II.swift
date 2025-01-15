//
//  119. Pascal's Triangle II.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/15/25.
//

import Foundation

class PascalsTriangleII {
    func getRow(_ rowIndex: Int) -> [Int] {
        var triangle = [[Int]]()

        for i in 0...rowIndex {
            var row = Array(repeating: 1, count: rowIndex + 1)
            
            if triangle.count >= 1 {
                for j in 1..<i {
                    row[j] = triangle[i-1][j-1] + triangle[i-1][j]
                }
            }
            triangle.append(row)
        }

        return triangle[rowIndex]
    }
}
