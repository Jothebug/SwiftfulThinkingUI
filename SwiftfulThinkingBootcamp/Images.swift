//
//  Images.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 25/8/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        Image("king-of-gondor")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            .clipped()
            .cornerRadius(300/2)
            .padding(.bottom)
//            .clipShape(
//                /*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/
//                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                Ellipse()
//            )
        
        Image("google")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
        
    }
}

#Preview {
    Images()
}
