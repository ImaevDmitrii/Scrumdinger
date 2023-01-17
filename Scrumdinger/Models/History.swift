//
//  History.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 17.01.2023.
//

import Foundation

struct History: Identifiable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var lenghtInMunutes: Int
    
    init(id: UUID = UUID(), date: Date = Date(),attendees:[DailyScrum.Attendee], lenghtInMunutes: Int = 5){
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lenghtInMunutes = lenghtInMunutes
    }
}
