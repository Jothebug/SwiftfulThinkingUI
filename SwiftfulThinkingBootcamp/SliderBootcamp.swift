//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 2/9/24.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack{
            Text("Rating: ")
            Text(String(format: "%.0f", sliderValue))
                .foregroundColor(color)
            
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                } ,
                minimumValueLabel: 
                    Text("1")
                    .font(.headline)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel: Text("2"),
                label: { Text("title")})
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
