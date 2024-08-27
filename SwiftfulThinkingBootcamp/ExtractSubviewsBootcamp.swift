//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 27/8/24.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    
    var body: some View {
        ZStack {
            Color(.orange)
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: Color.red)
            MyItem(title: "Oranges", count: 10, color: Color.green)
            MyItem(title: "Cucumbers", count: 34, color: Color.blue)
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
