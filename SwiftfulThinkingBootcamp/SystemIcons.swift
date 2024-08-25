//
//  SystemIcons.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 25/8/24.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
            .scaledToFit()
//            .font(.largeTitle)
//            .font(.system(size: 100))
            .foregroundColor(.yellow)
            .frame(width: 200, height: 200)
//            .clipped()
    }
}

#Preview {
    SystemIcons()
}
