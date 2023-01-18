//
//  HistoryVIew.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 18.01.2023.
//

import SwiftUI

struct HistoryVIew: View {
    
    let history: History
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading){
                Divider()
                    .padding(.bottom)
                Text("Attendees")
                    .font(.headline)
                Text(history.atendeeString)
                if let transcript = history.transcript {
                    Text("Transcript")
                        .font(.headline)
                        .padding(.top)
                    Text(transcript)
                }
            }
        }
        .navigationTitle(Text(history.date,style: .date))
        .padding()
    }
}
extension History {
    var atendeeString: String {
        ListFormatter.localizedString(byJoining: attendees.map({$0.name}))
    }
}

struct HistoryVIew_Previews: PreviewProvider {
    static var history: History {
        History(attendees: [DailyScrum.Attendee(name: "Darla"), DailyScrum.Attendee(name: "Egor"), DailyScrum.Attendee(name: "Dima")], lenghtInMunutes: 10, transcript: "Dima, can you stat today? Yes sure! Okey, ...")
    }
    static var previews: some View {
        HistoryVIew(history: history)
    }
}
