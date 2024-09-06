//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 27/8/24.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                
                ForEach(0..<10) {index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(20)
                }
            }
        }
        .background(Color.blue)
//        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//        .ignoresSafeArea(.container)
        .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
            Text("Hi")
                .padding()
                .background(.yellow)
        }
        
    }
}

#Preview {
    SafeAreaBootcamp()
}
