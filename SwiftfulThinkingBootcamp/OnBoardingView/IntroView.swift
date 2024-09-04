//
//  IntroView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 4/9/24.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(
                gradient: Gradient(colors: [Color("gradientColor2"), Color("gradientColor1")]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                Text("Profile View")
            } else {
                Text("Onboarding view")
            }
            
            // if user is signed in
            // profile view
            // else
            // onboarding view
        }
    }
}

#Preview {
    IntroView()
}
