//
//  LazyVGridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 26/8/24.
//

import SwiftUI

struct LazyVGridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil),
        GridItem(.flexible(), spacing: 10, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
        
//        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 100, maximum: 300), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 10,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<20){ index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .background(.yellow)
                        .padding()
                    ) {
                        ForEach(0..<20){ index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        }
                    }
            })
        }
    }
}

#Preview {
    LazyVGridBootcamp()
}
