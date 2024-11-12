//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Vinicio Barbosa Bezerra on 15/10/2024.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 10, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Placeholder Elapsed")
                    .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds remaining")
                    .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remaining")
            .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 5)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "fooward.fill")
                }
                .accessibilityLabel("next speaker")
                
            }
        }
        .padding()
    }
}

#Preview {
    MeetingView()
}
