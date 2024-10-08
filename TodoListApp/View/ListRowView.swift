//
//  ListRowView.swift
//  TodoListApp
//
//  Created by CustomAR LLC on 17.08.24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName:item.isCompleted ? "checkmark.circle": "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}



#Preview {
    let item1 = ItemModel(title: "This is the first", isCompleted: false)
    let item2 = ItemModel(title: "This is the second", isCompleted: true)
    
    return Group {
        ListRowView(item: item1)
        ListRowView(item: item2)
    }
    .previewLayout(.sizeThatFits)
}
