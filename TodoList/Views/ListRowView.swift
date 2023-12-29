//
//  ListRowView.swift
//  TodoList
//
//  Created by Bruno Amorim on 29/12/23.
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


#Preview {
    Group {
        ListRowView(item: ItemModel(title: "First title", isCompleted: false))
        ListRowView(item: ItemModel(title: "Second title", isCompleted: true))
    }
    .previewLayout(.sizeThatFits)
}
