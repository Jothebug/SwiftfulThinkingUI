//
//  AppStorageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 4/9/24.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    // If use @AppStorage, do not need to use UserDefaults.standard.set/get
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()){
                let name = "Jo"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
