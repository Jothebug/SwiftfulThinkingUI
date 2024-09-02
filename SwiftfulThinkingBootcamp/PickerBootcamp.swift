//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 2/9/24.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    // WATCH OUT: when use SegmentedPicker
    
    // modify attribute of SegmentedPickerStyle
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes,for: .selected)
    }
    
    var body: some View {
        Picker(
            selection: $selection,
            content: {
                ForEach(filterOptions, id: \.self) {option in
                    Text(option)
                        .tag(option)
                }
            },
            label: {
                HStack {
                    Text("Filter: ")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(color: .blue.opacity(0.3), radius: 10, x:0, y: 10)
            }
        )
        .pickerStyle(SegmentedPickerStyle())
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker (
//                selection: $selection,
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.title)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                },
//                label: {
//                    Text("Picker")
//                }
//            )
//            .pickerStyle(WheelPickerStyle())
//        }
    }
}

#Preview {
    PickerBootcamp()
}
