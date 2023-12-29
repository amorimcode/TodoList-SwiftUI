//
//  ListView.swift
//  TodoList
//
//  Created by Bruno Amorim on 29/12/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = ["First", "Second", "Third"]
    
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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

