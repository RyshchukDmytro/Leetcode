//
//  929. Unique Email Addresses.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/29/24.
//

import Foundation

class UniqueEmailAddresses {
    func numUniqueEmails(_ emails: [String]) -> Int {
        var isPlusSign = false
        var isDomainName = false
        var arr = [String]()
        
        for address in emails {
            var str = ""
            isPlusSign = false
            isDomainName = false
            for c in address {
                if c == "+" {
                    if isDomainName {
                        str += String(c)
                    }
                    isPlusSign = true
                } else if c == "@" {
                    isPlusSign = false
                    isDomainName = true
                    str += "@"
                } else if !isPlusSign {
                    if c == "." {
                        if isDomainName {
                            str += String(c)
                        }
                    } else {
                        str += String(c)
                    }
                }
            }
            arr.append(str)
        }

        return Set(arr).count
    }
}
