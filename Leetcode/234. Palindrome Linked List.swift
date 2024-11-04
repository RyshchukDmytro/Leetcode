//
//  234. Palindrome Linked List.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/4/24.
//

import Foundation

class PalindromeLinkedList {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head

        while fast != nil || fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        var current = slow
        var prev: ListNode?
        var next: ListNode?

        while current != nil  {
            next = current?.next
            current?.next = prev

            prev = current
            current = next
        }

        var firstHalf = head
        var secondHalf = prev

        while secondHalf != nil {
            if firstHalf?.val != secondHalf?.val {
                return false
            }
            firstHalf = firstHalf?.next
            secondHalf = secondHalf?.next
        }

        return true
    }
}
