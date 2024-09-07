//
//  ControlGroupBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 7/9/24.
//

import SwiftUI

struct ControlGroupBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
                Button("Uno") {
                    
                }
                Button("Dogs") {
                    
                }
            }
            Menu("How are you?") {
                Button("Good") {
                    
                }
                Button("Bad") {
                    
                }
            }
        }
    }
}

#Preview {
    ControlGroupBootcamp()
}
