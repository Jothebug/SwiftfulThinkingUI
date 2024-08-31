//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 31/8/24.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    let timing: Double = 10.0
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.7,
                    blendDuration: 1.0
                ))
            
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                    .animation(.linear(duration: timing))
//            
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: isAnimating ? 350 : 50, height: 100)
//                    .animation(.easeIn(duration: timing))
//            
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                    .frame(width: isAnimating ? 350 : 50, height: 100)
//                    .animation(.easeInOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
