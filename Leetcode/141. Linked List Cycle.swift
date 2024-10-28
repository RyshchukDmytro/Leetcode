//
//  141. Linked List Cycle.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class LinkedListCycle {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head?.next

        while fast?.next != nil || fast?.next?.next != nil {
            if slow === fast {
                return true
            }

            slow = slow?.next
            fast = fast?.next?.next
        }

        return false
    }
    
    /*func hasCycle(_ head: ListNode?) -> Bool {
        var current = head
        
        while current != nil {
            print("\(current?.val) === \(current?.next?.val)")
            if current === current?.next {
                return true
            }
            
            print("check: ", current?.next?.val)
            current = current?.next
        }
        
        return false
    }*/
}
