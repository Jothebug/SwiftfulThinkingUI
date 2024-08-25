//
//  Backgrounds&Overlays.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 25/8/24.
//

import SwiftUI

struct Backgrounds_Overlays: View {
    var body: some View {
        Spacer()
        Text("Hello, Josephine!")
            .background(Circle()
                .fill(LinearGradient(gradient: /*@START_MENU_TOKEN@*/Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .frame(width: 140, height: 140, alignment: .center)
            )
            .background(Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .frame(width: 150, height: 150, alignment: .center)
            )
            Spacer()
        
        Circle()
            .fill(.pink)
            .frame(width: 140, height: 140, alignment: .center)
            .overlay(
                Text("Hello, Josephine!")
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(.purple)
                    .frame(width: 150, height: 150)
            )
        Spacer()
        Rectangle()
            .frame(width: 100, height: 100, alignment: .bottom)
            .overlay(
                Rectangle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                , alignment: .topLeading
            )
            .background(
                Rectangle().fill(.red).frame(width: 150, height: 150)
                ,alignment: .bottomTrailing
            )
        Spacer()
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 0.8)), radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white))
                            .shadow(
                                color: Color(#colorLiteral(red: 0.3236978054, green: 0.1063579395, blue: 0.574860394, alpha: 0.8)),
                                radius: 10,
                                x: 5,
                                y: 5)
                        ,alignment: .bottomTrailing
                    )
            )
        Spacer()
    }
}

#Preview {
    Backgrounds_Overlays()
}
