//
//  ItemModel.swift
//  TodoList
//
//  Created by Bruno Amorim on 29/12/23.
//

import Foundation


struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
