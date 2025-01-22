//
//  566. Reshape the Matrix.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/21/25.
//

import Foundation

class ReshapeTheMatrix {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        var rows = mat.count
        var cols = mat[0].count

        if cols * rows != c * r {
            return mat
        }

        var resultMatrix = [[Int]]()
        var arr = [Int]()

        for i in 0..<rows {
            for j in 0..<cols {
                arr.append(mat[i][j])

                if arr.count == c {
                    resultMatrix.append(arr)
                    arr = []
                }
            }
        }
        
        /* - Or this for loop
         for i in 0..<rows * cols {
             arr.append(mat[i/cols][i%cols])
             
             if arr.count == c {
                 resultMatrix.append(arr)
                 arr = []
             }
         }
        */

        return resultMatrix
    }
}
