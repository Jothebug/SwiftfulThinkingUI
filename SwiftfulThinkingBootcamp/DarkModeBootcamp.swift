//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 3/9/24.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    
                    Text("This color is RED")
                        .foregroundColor(.red)
                    
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
        DarkModeBootcamp()
            .preferredColorScheme(.light)
}
