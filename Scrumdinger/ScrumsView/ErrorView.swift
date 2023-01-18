//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Дмитрий Имаев on 18.01.2023.
//

import SwiftUI

struct ErrorView: View {
    
    let errorWraped: ErrorWrapped
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("An error has ocurred!")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWraped.error.localizedDescription)
                    .font(.headline)
                Text(errorWraped.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss"){
                        dismiss()
                    }
                }
            }
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    enum SampleError: Error {
        case errorRequired
    }
        static var wrapped: ErrorWrapped {
            ErrorWrapped(error: SampleError.errorRequired, guidance: "You can safely ignore this error.")
        }
    
    static var previews: some View {
        ErrorView(errorWraped: wrapped)
    }
}
