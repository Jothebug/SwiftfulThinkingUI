//
//  Stacks.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 25/8/24.
//

import SwiftUI

struct Stacks: View {
    // VStacks -> Vertical
    // HStacks -> Horizontal
    // ZStacks -> zIndex (back to front)
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .fill(.yellow)
                .frame(width: 350, height: 350, alignment: .center)
            
            VStack(alignment: .leading, spacing: 15) {
                Rectangle()
                    .fill(.red)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 100, height: 100, alignment: .center)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                        .fill(.purple)
                        .frame(width: 50, height: 50, alignment: .center)
                    Rectangle()
                        .fill(.orange)
                        .frame(width: 100, height: 50, alignment: .center)
                    
                }
                .background(.white)
            }
            .background(.black)
        }
//        VStack {
//            Spacer()
//            VStack(alignment: .trailing, spacing: 0,content: {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 100, height: 100)
//            })
//            Spacer()
//            HStack(alignment: .bottom,content: {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 100, height: 100)
//            })
//            Spacer()
//            ZStack(alignment: .trailing, content: {
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 200, height: 200)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(.orange)
//                    .frame(width: 100, height: 100)
//            })
//            Spacer()
//        }
    }
}

#Preview {
    Stacks()
}
