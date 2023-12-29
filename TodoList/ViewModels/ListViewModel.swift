//
//  ListViewModel.swift
//  TodoList
//
//  Created by Bruno Amorim on 29/12/23.
//

import Foundation

/*
 CRUD FUNCTIONS
 
 CREATE
 READ
 UPDATE
 DELETE
 
 */

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init () {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First title", isCompleted: false),
            ItemModel(title: "Second title", isCompleted: true),
            ItemModel(title: "Third title", isCompleted: false),
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
//        if let index = items.firstIndex { existingItem in
//            return existingItem.id == item.id
//        } {
//            items[index] = item
//        }
        
        
        // this code is shortly
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
