//
//  290. Word Pattern.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/25/24.
//

import Foundation

class WordPattern {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var arrP = Array(pattern)
        var arrS = s.split(separator: " ")
        var dict = [String: String]()

        if arrP.count != arrS.count {
            return false
        }

        for i in 0..<arrP.count {
            if dict[String(arrP[i])] != nil {
                if dict[String(arrP[i])] != String(arrS[i]) {
                    return false
                }
            } else {
                dict[String(arrP[i])] = String(arrS[i])
            }
        }

        return dict.count == Set(arrS).count
    }
}
