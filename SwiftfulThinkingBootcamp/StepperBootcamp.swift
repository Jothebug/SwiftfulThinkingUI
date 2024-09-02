//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 2/9/24.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack{
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper(
                "Stepper 2",
                onIncrement: {
                    incrementWidth(amount: 100)
                }, onDecrement: {
                    incrementWidth(amount: -100)
                }
            )
            .padding(50)
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        widthIncrement += amount
    }
    
}

#Preview {
    StepperBootcamp()
}
