//
//  9. Palindrome Number.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class PalindromeNumber {
    func isPalindrome(_ x: Int) -> Bool {
        String(x) == String(String(x).reversed())
    }
    
    /*func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var reverseNum = 0
        var number = x
        
        while(number != 0){
            reverseNum = reverseNum * 10
            reverseNum = reverseNum + number % 10
            number = number/10
        }
        return reverseNum == x
    }*/
}
