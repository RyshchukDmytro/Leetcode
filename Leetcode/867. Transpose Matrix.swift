//
//  867. Transpose Matrix.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/21/25.
//

import Foundation

class TransposeMatrix {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var result = [[Int]]()

        for i in 0..<matrix[0].count {
            var tempArr = [Int]()

            for j in 0..<matrix.count {
                tempArr.append(matrix[j][i])
            }

            result.append(tempArr)
        }

        return result
    }
}
