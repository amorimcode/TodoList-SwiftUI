//
//  ListRowView.swift
//  TodoList
//
//  Created by Bruno Amorim on 29/12/23.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("This is the first item")
            Spacer()
        }
    }
}


#Preview {
    ListRowView(title: "this is the first title")
}