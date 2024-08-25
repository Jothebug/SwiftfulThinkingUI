//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 26/8/24.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
//        .padding(.horizontal, 200)
        .background(Color.blue)
        
        HStack(spacing: 0) {
            Image(systemName: "xmark")
            
            Spacer()
            
            Image(systemName: "gear")
        }
        .font(.title)
        .background(Color.yellow)
        .padding(.horizontal)
        .background(.blue)
        
        Spacer()
    }
}

#Preview {
    SpacerBootcamp()
}
