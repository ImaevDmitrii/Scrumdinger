//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 13.01.2023.
//

import Foundation
import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self {Self()}
}


