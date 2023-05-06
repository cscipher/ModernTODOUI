//
//  TodoModel.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import Foundation
import SwiftUI

struct TodoModel: Identifiable {
    var id: Int
    var title: String
    var description: String
    var createdAt: Date
    var createdBy: String
    var cardColor: Color
}
