//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 6/9/24.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        TabView {
            Color.red.tabItem {
                Image(systemName: "heart.fill")
                Text("Hello")
            }
            .badge(5)
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hellow")
                }
                .badge(0)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("NEW")
        }
    }
}

#Preview {
    BadgesBootcamp()
}
