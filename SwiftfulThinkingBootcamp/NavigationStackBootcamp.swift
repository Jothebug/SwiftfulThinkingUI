//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 6/9/24.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super seque") {
//                        stackPath.append("Coconut")
                        stackPath.append(contentsOf: ["Coconut", "Mango"])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
//                        NavigationLink(
//                            destination:  MySecondScreen(value: x),
//                            label: {
//                                Text("Click me: \(x)")
//                            })
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                    .navigationTitle("Nav Bootcamp")
                    .navigationDestination(for: Int.self) { value in
                        MySecondScreen(value: value)
                    }
                    .navigationDestination(for: String.self) { value in
                       Text("ANOTHER SCREEN: \(value)")
                    }
                }
            }
        }
    }
}

struct MySecondScreen: View {
    let value: Int
    
    init(value: Int) {
        self.value = value
        print("INIT VALUE: \(value)")
    }
    
    var body: some View {
        Text("Screen: \(value)")
    }
}

#Preview {
    NavigationStackBootcamp()
}
