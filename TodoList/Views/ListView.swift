//
//  ListView.swift
//  TodoList
//
//  Created by Bruno Amorim on 29/12/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "First title", isCompleted: false),
        ItemModel(title: "Second title", isCompleted: true),
        ItemModel(title: "Third title", isCompleted: false),
    ]
    
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📋")
        .navigationBarItems(leading: EditButton(), trailing:
                                NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}

