//
//  ActionSheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 1/9/24.
//

import SwiftUI

struct ActionSheetsBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30, alignment: .center)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")) {
            
        }
        
        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
            
        }
        
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
            
        }
        
        let cancelButton: ActionSheet.Button = .cancel()
        
        let title: String = "What would you like to do?"
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: Text(title),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: Text(title),
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton]
            )
        }
        
        // return ActionSheet(title: Text("This is the title"))
        
//        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
//        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title"),
//            message: Text("This is the message"),
//            buttons: [button1, button2, button3]
//        )
    }
}

#Preview {
    ActionSheetsBootcamp()
}
