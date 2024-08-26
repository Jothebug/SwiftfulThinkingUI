//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 26/8/24.
//

import SwiftUI

struct ForEachBootcamp: View {
    let data: [String] = ["Hi", "Hello"]
    let myString: String  = "Hello"
    
    
    var body: some View {
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("index is: \(index)")
                }
            }
            
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

#Preview {
    ForEachBootcamp()
}
