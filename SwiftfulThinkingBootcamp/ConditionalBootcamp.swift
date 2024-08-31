//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 31/8/24.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack {
            
            Button("IS LOADING: \(isLoading)", action: {
                isLoading.toggle()
            })
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
