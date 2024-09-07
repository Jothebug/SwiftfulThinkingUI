//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by HaYen on 7/9/24.
//

import SwiftUI

struct GridBootcamp: View {
    var body: some View {
        VStack {
            
            Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
                ForEach(0..<4) { rowIndex in
                    GridRow {
                        ForEach(0..<4) { columnIndex in
                            let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                            
                            if cellNumber == 7 {
                                EmptyView()
//                                Color.green
//                                    .gridCellUnsizedAxes([.horizontal, .vertical])
                            } else {
                                cell(int: cellNumber)
                                    .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                    .gridCellAnchor(.leading)
                                    .gridColumnAlignment(
                                        cellNumber == 1 ? .trailing : cellNumber == 4 ? .leading : .center)
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
            .frame(height: int == 10 ? 20 : nil)
    }
}

#Preview {
    GridBootcamp()
}
