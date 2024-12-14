//
//  709. To Lower Case.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/14/24.
//

import Foundation

class ToLowerCase {
    func toLowerCase(_ s: String) -> String {
        var str = ""
        
        for c in s {
            let ascii = c.asciiValue ?? 0
            if ascii >= 65 && ascii <= 90 {
                str += String(UnicodeScalar(ascii + 32))
            } else {
                str += String(c)
            }
        }

        return str
    }
}
