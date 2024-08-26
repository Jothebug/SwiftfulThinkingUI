//
//  Scrollview.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 26/8/24.
//

import SwiftUI

struct Scrollview: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(0..<20) {index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

#Preview {
    Scrollview()
}
