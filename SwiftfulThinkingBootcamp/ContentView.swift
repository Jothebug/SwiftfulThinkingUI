//
//  ContentView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 25/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!".capitalized)
                .font(.title)
                .fontWeight(.semibold)
                .fontDesign(.monospaced)
                .frame(width: 100, height: 100, alignment: .trailing)
                .minimumScaleFactor(0.1)
            
            Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it".lowercased())
//                .font(.body)
//                .fontWeight(.semibold)
//                .bold()
//                .underline()
//                .underline(true, color: Color.red)
//                .italic()
//                .strikethrough(true, color: Color.green)
            
                .font(.system(size: 24, weight: .semibold, design: .serif))
//                .baselineOffset(5)
//                .kerning(10)
                .multilineTextAlignment(.leading)
                .foregroundColor(.red)
                .frame(width: 100, height: 100, alignment: .center)
                .minimumScaleFactor(0.1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
