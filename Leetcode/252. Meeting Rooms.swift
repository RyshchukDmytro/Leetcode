//
//  252. Meeting Rooms.swift
//  Leetcode
//
//  Created by Dmytro Ryshchuk on 10/29/24.
//

import Foundation

class MeetingRooms {
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        var sorted = intervals.sorted { $0[0] < $1[0] }

        var i = 1
        while i < sorted.count {
            if sorted[i][0] < sorted[i - 1][1] {
                return false
            }
            i += 1
        }

        return true
    }
}
