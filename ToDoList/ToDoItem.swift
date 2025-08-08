//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import Foundation
import SwiftData

@Model
class ToDoItem {
    var item = ""
    var isImp = false
    
    init(item: String, isImp: Bool) {
        self.item = item
        self.isImp = isImp
    }
}
