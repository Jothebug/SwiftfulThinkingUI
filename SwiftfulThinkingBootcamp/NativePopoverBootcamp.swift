//
//  NativePopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 7/9/24.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good", "Average", "Very bad"
    ]
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            Button("CLICK ME") {
                showPopover.toggle()
            }
            .padding(20)
            .background(.yellow)
            .popover(
                isPresented: $showPopover,
                attachmentAnchor: .point(.top),
                content: {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(feedbackOptions, id: \.self) {
                                Button($0) {
                                    
                                }
                                if $0 != feedbackOptions.last {
                                    Divider()
                                }
                            }
                        }
                        .padding(20)
                    }
                    .presentationCompactAdaptation(.popover)
            })
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
