//
//  GroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 7/9/24.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello ground")
            
            Group {
                Text("Hello, world2")
                Text("Hello, world3")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
