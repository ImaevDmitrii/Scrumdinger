//
//  History.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 17.01.2023.
//

import Foundation

struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    var lenghtInMunutes: Int
    var transcript: String?
    
    init(id: UUID = UUID(), date: Date = Date(),attendees:[DailyScrum.Attendee], lenghtInMunutes: Int = 5, transcript: String? = nil){
        self.id = id
        self.date = date
        self.attendees = attendees
        self.lenghtInMunutes = lenghtInMunutes
        self.transcript = transcript
    }
}
