//
//  ContentView.swift
//  hittableTest
//
//  Created by Kazuaki Matsuo on 5/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingPopover = true

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            //                .accessibilityHidden(true)
                .popover(isPresented: $showingPopover) {
                    Text("Big Button")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: 100)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .overlay {
                                Color.blue
                                    .opacity(0.2)
                            }
                    .font(.headline)
                    .padding()
                }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
