//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 1/9/24.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
            VStack(alignment: .leading, spacing: 10.0) {
                Image(systemName: "house.fill")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Swiftful Thinking")
                    .font(.headline)
                Text("How to use Context Menu")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(backgroundColor.cornerRadius(30))
            .contextMenu(menuItems: {
                Button(action: {
                    backgroundColor = .yellow
                }, label: {
                    Label("Button 1", systemImage: "flame.fill")
                })
                
                Button(action: {
                    backgroundColor = .red
                }, label: {
                    Text("Button 2")
                })
                
                Button(action: {
                    backgroundColor = .pink
                }, label: {
                    HStack {
                        Text("Like post")
                        Image(systemName: "heart.fill")
                    }
                })
            })
    }
}

#Preview {
    ContextMenuBootcamp()
}
