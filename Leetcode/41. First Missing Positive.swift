//
//  41. First Missing Positive.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/15/24.
//

import Foundation

class FirstMissingPositive {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var solutionNumber = 1
        var solutionFound = false
        var exitFromArray = false
        while !solutionFound {
            exitFromArray = false
            for numberInArray in nums {
                if solutionNumber == numberInArray {
                    solutionNumber += 1
                    exitFromArray = true
                    break
                }
            }
            if !exitFromArray {
                solutionFound = true
            }
        }
        return solutionNumber
    }
}

