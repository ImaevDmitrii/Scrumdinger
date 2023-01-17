//
//  DataEditView.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 17.01.2023.
//

import SwiftUI

struct DataEditView: View {
    
    @Binding var data: DailyScrum.Data
    @State private  var newAttendeeName = ""
    
    var body: some View {
        Form{
            Section(header: Text("Meeting Info")){
                TextField("Title", text: $data.title)
                HStack{
                    Slider(value: $data.lenghtInMinutes, in: 5...30, step: 1){
                        Text("Lenght")
                    }
                    .accessibilityLabel("\(Int(data.lenghtInMinutes)) minutes")
                    Spacer()
                    Text("\(Int(data.lenghtInMinutes)) minutes")
                        .accessibilityHidden(true)
                }
                ThemePicker(selection: $data.theme)
            }
            Section(header: Text("Attendees")) {
                ForEach(data.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete{ indices in
                    data.attendees.remove(atOffsets: indices)
                }
                HStack{
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            data.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attedee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}


struct DataEditView_Previews: PreviewProvider {
    static var previews: some View {
        DataEditView(data: .constant(DailyScrum.sampleData[0].data))
    }
}
