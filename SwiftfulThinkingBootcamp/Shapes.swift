//
//  Shapes.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 25/8/24.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        Circle()
            .fill(Color.red)
            .frame(width: 200, height: 100)
//            .foregroundColor(.pink)
//            .stroke(Color.red)
//            .stroke(Color.red, lineWidth: 3)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth:20, lineCap: .butt, dash: [10]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 20)
        
        Ellipse()
            .trim(from: 0.2, to:1.0)
            .frame(width: 200, height: 100)
            .foregroundColor(.green)
        
        Capsule(style: .circular)
            .frame(width: 200, height: 100)
            .foregroundColor(.green)
        
        RoundedRectangle(cornerRadius: 20)
            .trim(from: 0.2, to:0.8)
            .frame(width: 300, height: 200)
            .foregroundColor(.pink)
        
        
    }
}

#Preview {
    Shapes()
}
