//
//  48. Rotate Image.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/16/24.
//

import Foundation

class RotateImage {
    func rotate(_ matrix: inout [[Int]]) {
        var result = matrix
        var positionI = matrix.count - 1
    
        for i in 0..<matrix.count {
            var positionJ = 0
            for j in 0..<matrix[i].count {
                result[positionJ][positionI] = matrix[i][j]
                positionJ += 1
            }
            positionI -= 1
        }
    
        matrix = result
    }
}
