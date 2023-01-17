//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 13.01.2023.
//

import Foundation


struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lenghtInMinutes: Int
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID = UUID(), title: String, attendees: [String], lenghtInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{ Attendee(name: $0)}
        self.lenghtInMinutes = lenghtInMinutes
        self.theme = theme
    }
}

extension DailyScrum{
    struct Attendee: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    
    struct Data{
        var title: String = ""
        var attendees: [Attendee] = []
        var lenghtInMinutes: Double = 5
        var theme: Theme = .seafoam
    }
    
    var data: Data {
        Data(title: title, attendees: attendees, lenghtInMinutes: Double(lenghtInMinutes), theme: theme)
    }
    
    mutating func update(from data: Data){
        title = data.title
        attendees = data.attendees
        lenghtInMinutes = Int(data.lenghtInMinutes)
        theme = data.theme
    }
    
    init(data: Data){
        id = UUID()
        title = data.title
        attendees = data.attendees
        lenghtInMinutes = Int(data.lenghtInMinutes)
        theme = data.theme
    }
}

extension DailyScrum{
    static let sampleData: [DailyScrum] = [
        DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"] , lenghtInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lenghtInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lenghtInMinutes: 5, theme:.poppy)
    ]
    
}
