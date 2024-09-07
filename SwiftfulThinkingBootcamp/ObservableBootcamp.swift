//
//  ObservableBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 7/9/24.
//

import SwiftUI

@Observable class ObservableViewModel {
     var title: String = "New title"
}

struct ObservableBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack (spacing: 40) {
            Button(viewModel.title) {
                viewModel.title = "New title"
            }
            
            SomeChildView(viewModel: viewModel)
            
            ThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "new title"
        }
    }
    
}

struct ThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Third view"
        }
    }
}

#Preview {
    ObservableBootcamp()
}
