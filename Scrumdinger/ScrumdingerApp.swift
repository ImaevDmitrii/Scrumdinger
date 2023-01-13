//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 13.01.2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
