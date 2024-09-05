//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 5/9/24.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        VStack {
            AsyncImage(url: url) {phase in
                switch phase {
                case .empty:
                    ProfileView()
                case .success (let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                case .failure:
                    Image(systemName: "questionmark")
                        .font(.headline)
                default:
                    Image(systemName: "questionmark")
                        .font(.headline)
                }
            }
            
            AsyncImage(
                url: url,
                content: {returnedImage in
                    returnedImage
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                },
                placeholder: {
                    ProfileView()
                }
            )
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
