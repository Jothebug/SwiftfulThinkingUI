//
//  ResizableBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 7/9/24.
//

import SwiftUI

struct ResizableBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView(detents: $detents)
//                .presentationDetents([.fraction(0.1),.medium, .large])
                .presentationDetents([.fraction(0.5), .medium, .large], selection: $detents)
                .presentationDragIndicator(.hidden)
                .interactiveDismissDisabled()
        })
    }
}

struct MyNextView: View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("MEDIUM") {
                    detents = .fraction(0.5)
                }
                
                Button("LARGE") {
                    detents = .large
                }
            }
        }
    }
}

#Preview {
    ResizableBootcamp()
}
