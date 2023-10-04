//
//  ContentView.swift
//  Shimmer Effect Animations
//
//  Created by Özgür Mercan on 28.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Shimmer!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
