//
//  ToolbarBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 6/9/24.
//

import SwiftUI

struct ToolbarBootcamp: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                ScrollView {
                    ForEach(0..<50) {_ in
                        Rectangle()
                            .fill(.white)
                            .frame(width: 200, height: 200)
                    }
                }
             
            }
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
            }
//            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    
                }
                Button("Screen 1") {
                    
                }
            }
        }
    }
}

#Preview {
    ToolbarBootcamp()
}
