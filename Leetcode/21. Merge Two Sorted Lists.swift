//
//  21. Merge Two Sorted Lists.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/27/24.
//

import Foundation

class MergeTwoSortedLists {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil {
            return list2
        } else if list2 == nil {
            return list1
        }

        var result: ListNode?

        if list1!.val < list2!.val {
            result = list1
            result?.next = mergeTwoLists(list1?.next, list2)
        } else {
            result = list2
            result?.next = mergeTwoLists(list1, list2?.next)
        }

        return result
    }
}
