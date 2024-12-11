//
//  520. Detect Capital.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/10/24.
//

import Foundation

class DetectCapital {
    func detectCapitalUse(_ word: String) -> Bool {
        var tempWord = word
        let first = tempWord.removeFirst()

        if word == word.uppercased() || word == word.lowercased() ||
        (String(first) == first.uppercased() &&
        tempWord == tempWord.lowercased()) {
            return true
        }

        return false
    }
}
