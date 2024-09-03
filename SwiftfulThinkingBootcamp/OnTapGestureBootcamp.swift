//
//  OnTapGestureBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 3/9/24.
//

import SwiftUI

struct OnTapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 250)
                .foregroundColor(isSelected ? .green : .red)
            
            Button(action: {
                isSelected.toggle()
            }, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 65)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            })
            
            Text("TAP GESTURE")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 65)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            // custom how many taps can perform the action
                .onTapGesture(count: 2, perform: {
                    isSelected.toggle()
                })
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    OnTapGestureBootcamp()
}
