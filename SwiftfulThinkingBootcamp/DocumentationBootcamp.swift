//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 3/9/24.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = ["Apple", "Orange", "Banana"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    var body: some View {
        NavigationStack {
            foregroundLayer
            .navigationTitle("Documentation Bootcamp")
            .navigationBarItems(
                trailing: Button(
                    "Alert",
                    action: {
                        showAlert.toggle()
                    })
            )
            .alert(isPresented: $showAlert, content: {
                getAlert(text: "This is the alert")
            })
        }
    }
    
    
    /// This is the foreground layer that holds a scrollview
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) {name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specific title
    ///
    /// This function creates and returns an alert immediately. The alert will have a title bases on the text parameter but it will NOT have a message
    ///```
    ///getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    ///```
    ///
    /// - Warning: There is no additional message in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: return an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW
#Preview {
    DocumentationBootcamp()
}
