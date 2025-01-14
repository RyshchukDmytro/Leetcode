//
//  118. Pascal's Triangle.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/14/25.
//

import Foundation

class PascalsTriangle {
    func generate(_ numRows: Int) -> [[Int]] {
        var triangle = [[Int]]()

        for i in 0..<numRows {
            var row = Array(repeating: 1, count: i + 1)

            if triangle.count > 0 {
                for j in 1..<i {
                    row[j] = triangle[i-1][j-1] + triangle[i-1][j]
                }
            }

            triangle.append(row)
        }

        return triangle
    }
}
