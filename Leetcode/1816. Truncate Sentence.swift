//
//  1816. Truncate Sentence.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/2/25.
//

import Foundation

class TruncateSentence {
    func truncateSentence(_ s: String, _ k: Int) -> String {
        s.split(separator: " ").prefix(k).joined(separator: " ")
    }
}
