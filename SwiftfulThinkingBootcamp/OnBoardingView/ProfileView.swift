//
//  ProfileView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 5/9/24.
//

import SwiftUI

struct ProfileView: View {
    
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 18) years old")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .background(.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(.white)
        .cornerRadius(10)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
