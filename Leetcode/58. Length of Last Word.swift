//
//  58. Length of Last Word.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/1/24.
//

import Foundation

class LengthOfLastWord {
    func lengthOfLastWord(_ s: String) -> Int {
        s.components(separatedBy: " ").filter { $0 != "" }.last?.count ?? 0
    }
}
