//
//  FocusStateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 6/9/24.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @FocusState private var fieldInput: OnboardingField?
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Add your name here...", text: $username)
                .focused($fieldInput, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            TextField("Add your password here...", text: $password)
                .focused($fieldInput, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid{
                    fieldInput = .password
                } else {
                    fieldInput = .username
                }
            }
        }
        .padding(40)
    }
}

#Preview {
    FocusStateBootcamp()
}
