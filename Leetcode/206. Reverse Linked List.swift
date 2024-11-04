//
//  206. Reverse Linked List.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/4/24.
//

import Foundation

class ReverseLinkedList {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var current = head
        var next: ListNode?
        var prev: ListNode?

        while current != nil {
            next = current?.next
            current?.next = prev

            prev = current
            current = next
        }

        return prev
    }
}
