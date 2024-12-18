//
//  1108. Defanging an IP Address.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/18/24.
//

import Foundation

class DefangingAnIPAddress {
    func defangIPaddr(_ address: String) -> String {
        var result = address
        return result.replacingOccurrences(of: ".", with: "[.]")
    }
}
