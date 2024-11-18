//
//  71. Simplify Path.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/17/24.
//

import Foundation

class SimplifyPath {
    func simplifyPath(_ path: String) -> String {
        var tempArr = [String]()

        for elem in path.components(separatedBy: "/") {
            if elem == ".." {
                if tempArr.count > 0 {
                    tempArr.removeLast()
                }
            } else if elem != "." && elem != "" {
                tempArr.append("/\(elem)")
            }
        }

        let result = tempArr.joined()

        return result.count == 0 ? "/" : result
    }
}
