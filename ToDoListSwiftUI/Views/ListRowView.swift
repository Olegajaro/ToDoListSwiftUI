//
//  ListRowView.swift
//  ToDoListSwiftUI
//
//  Created by Олег Федоров on 04.11.2021.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var itemOne = ItemModel(title: "First Item", isCompleted: false)
    static var itemTwo = ItemModel(title: "Second Item", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: itemOne)
            ListRowView(item: itemTwo)
        }
        .previewLayout(.sizeThatFits)
    }
}
