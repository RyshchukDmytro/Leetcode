//
//  819. Most Common Word.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 1/6/25.
//

import Foundation

class MostCommonWord {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        var strArr = [String]()
        var tempWord = ""
        var dict = [String: Int]()

        for c in paragraph.lowercased {
            if c.isLetter {
                tempWord += String(c)
            } else {
                if tempWord != "" {
                    strArr.append(tempWord)
                }
                tempWord = ""
            }
        }

        if tempWord != "" {
            strArr.append(tempWord)
        }

        for word in strArr {
            dict[word, default: 0] += 1
        }

        for ban in banned {
            dict[ban] = 0
        }

        let sortedDict = dict.sorted { $0.value > $1.value }

        return sortedDict.first?.key ?? ""
    }

}
