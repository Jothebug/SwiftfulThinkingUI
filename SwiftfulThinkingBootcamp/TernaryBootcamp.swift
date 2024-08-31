//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 31/8/24.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "starting state".uppercased() : "ending state".uppercased())
            
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: 200, height: 100)
            
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
