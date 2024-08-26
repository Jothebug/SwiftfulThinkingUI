//
//  Initializer.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 26/8/24.
//

import SwiftUI

struct Initializer: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init (count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = Color.red
        } else {
            self.title = "Oranges"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.title)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        Initializer(count: 55, fruit: .apple)
        Initializer(count: 70, fruit: .orange)
    }
   
}
