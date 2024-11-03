//
//  83. Remove Duplicates from Sorted List.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 11/3/24.
//

import Foundation

class RemoveDuplicatesFromSortedList {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var current = head

        while current != nil && current?.next != nil {
            if current?.val == current?.next?.val {
                current?.next = current?.next?.next
            } else {
                current = current?.next
            }
        }

        return head
    }
}
