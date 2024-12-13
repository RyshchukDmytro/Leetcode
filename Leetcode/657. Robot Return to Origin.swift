//
//  657. Robot Return to Origin.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/13/24.
//

import Foundation

class RobotReturnToOrigin {
    func judgeCircle(_ moves: String) -> Bool {
        var verticalMoves = 0
        var horizontalMoves = 0

        for i in moves {
            if i == "U" {
                verticalMoves += 1
            } else if i == "D" {
                verticalMoves -= 1
            } else if i == "L" {
                horizontalMoves += 1
            } else {
                horizontalMoves -= 1
            }
        }

        return verticalMoves == 0 && horizontalMoves == 0
    }
}
