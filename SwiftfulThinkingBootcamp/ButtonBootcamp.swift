//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 27/8/24.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack {
            Text(title)
            
            // #1
            Button("Press me!") {
                self.title = "Button #1"
            }
            .accentColor(.red)
            
            // #2
            Button(action: {
                self.title = "Button #2"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    )
            })
            // #3
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            
            // #4
            Button(action: {
                self.title = "#4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
            
            // #5
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(width: .infinity)
            .foregroundColor(.white)
            .background(.blue)
            .controlSize(.small)
        }
      
    }
}

#Preview {
    ButtonBootcamp()
}
