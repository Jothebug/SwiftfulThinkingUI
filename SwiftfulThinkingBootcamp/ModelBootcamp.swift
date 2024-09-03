//
//  ModelBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 3/9/24.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
    
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samatha", userName: "ninja", followerCount: 34, isVerified: false),
        UserModel(displayName: "Chris", userName: "chris12", followerCount: 11, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading){
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                       
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
