//
//  876. Middle of the Linked List.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 12/28/24.
//

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

import Foundation

class MiddleOfTheLinkedList {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var current = head
        var future = head

        while future?.next != nil || future?.next?.next != nil {
            current = current?.next
            future = future?.next?.next
        }

        return current
    }
}
