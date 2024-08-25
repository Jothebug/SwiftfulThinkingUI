//
//  Colors.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 25/8/24.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .fill(
//                Color.secondary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color:
                        Color("CustomColor").opacity(0.3), radius:
                        /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x:-20, y: -20)
    }
}

#Preview {
    Colors()
}
