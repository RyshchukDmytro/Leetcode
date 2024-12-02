//
//  344. Reverse String.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/2/24.
//

import Foundation

class ReverseString {
    func reverseString(_ s: inout [Character]) {
        s = Array(s.reversed())
    }
}
