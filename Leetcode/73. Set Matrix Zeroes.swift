//
//  73. Set Matrix Zeroes.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/22/25.
//

import Foundation

class SetMatrixZeroes {
    func setZeroes(_ matrix: inout [[Int]]) {
        var tempMatrix = matrix
        var temporaryValue = Int.min
        var cols = matrix.count
        var rows = matrix[0].count

        for i in 0..<cols {
            for j in 0..<rows {
                if matrix[i][j] == 0 {
                    for t in 0..<rows {
                        if matrix[i][t] != 0 {
                            tempMatrix[i][t] = 0
                        }
                    }
                    
                    for t in 0..<cols {
                        if matrix[t][j] != 0 {
                            tempMatrix[t][j] = 0
                        }
                    }
                }
            }
        }

        matrix = tempMatrix
    }
}
