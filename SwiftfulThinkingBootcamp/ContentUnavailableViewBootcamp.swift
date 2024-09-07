//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 7/9/24.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *) {
//            ContentUnavailableView.search
            ContentUnavailableView(
                "No Internet Connection",
                systemImage: "wifi.slash",
                description: Text("Please connect to the internet and try again.")
            )
        } else {
            
        }
        
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
