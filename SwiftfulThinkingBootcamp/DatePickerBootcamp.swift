//
//  DatePickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 2/9/24.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatted: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack{
//        DatePicker(
//            "Select a Date",
//            selection: $selectDate,
//            displayedComponents: [.date, .hourAndMinute]
//        )
//            .accentColor(Color.red)
//            .datePickerStyle(
//                CompactDatePickerStyle()
//            )
            
            
        Text("SELECTED DATE IS:")
        Text(dateFormatted.string(from: selectDate))
            
        DatePicker(
            "Select a date 1",
            selection: $selectDate,
            in: startingDate...endingDate,
            displayedComponents: [.date]
        )
        .accentColor(.red)
        .datePickerStyle(CompactDatePickerStyle())
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
