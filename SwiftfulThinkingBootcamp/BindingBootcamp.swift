//
//  BingdingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 27/8/24.
//

import SwiftUI

struct BingdingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Test"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                Text(title)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "NEW TITLE"
        }, label: {
            Text(title)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BingdingBootcamp()
}
