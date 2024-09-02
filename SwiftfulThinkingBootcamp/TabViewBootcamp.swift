//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 3/9/24.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 2
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                center: .center,
                startRadius: 5,
                endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView {
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.yellow)
//            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
//                .foregroundColor(.green)
//        }
//        .frame(height: 300)
//        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectedTab) {
//            HomeView(selectTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectTab: Int
    
    var body: some View {
        ZStack {
            Color.red
                .ignoresSafeArea(edges: .top)
            
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectTab = 2
                }, label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })
            }
        }
    }
}
