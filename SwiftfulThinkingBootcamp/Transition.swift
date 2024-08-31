//
//  Transition.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 31/8/24.
//

import SwiftUI

struct Transition: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
//            }
            
                if showView {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
//                        .transition(AnyTransition.scale.animation(.easeInOut))
                        .transition(.asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.scale.animation(.easeInOut)
                        ))
                        .animation(.easeInOut)
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    Transition()
}
