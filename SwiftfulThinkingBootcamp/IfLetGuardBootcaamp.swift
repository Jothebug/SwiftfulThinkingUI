//
//  IfLetGuardBootcaamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 3/9/24.
//

import SwiftUI

struct IfLetGuardBootcaamp: View {
    
    @State var currentUserID: String? = "123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practing safe coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.headline)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        guard let userId = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userId)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcaamp()
}
