//
//  ContentView.swift
//  hittableTest
//
//  Created by Kazuaki Matsuo on 5/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

            // to push the element to out of screen
            Spacer()
                .frame(height: 1000.0)

            Text("Hello, world!")
//                .accessibilityHidden(true)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
