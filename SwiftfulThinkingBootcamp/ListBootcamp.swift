//
//  ListBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 31/8/24.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: 
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundColor(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical, 8)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: { indices, newOffset in
                        move(indices: indices, newOffset: newOffset)
                    })
                    .listRowBackground(Color.blue)
                }
                
                Section(header: Text("Veggies")){
                    ForEach(veggies, id: \.self) {
                        Text($0.capitalized)
                            .swipeActions(edge: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/, allowsFullSwipe: true) {
                                Button("Archive") {
                                    
                                }
                                .tint(.green)
                                Button("Save") {
                                    
                                }
                                .tint(.blue)
                                Button("Junk") {
                                    
                                }
                                .tint(.black)
                            }
                            .swipeActions(edge: .leading, allowsFullSwipe: false) {
                                Button("Share") {
                                    
                                }
                                .tint(.yellow)
                            }
                    }
                }
            }
//            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        }
        .accentColor(.red)
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
