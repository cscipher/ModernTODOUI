//
//  ColorPalleteModel.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import Foundation
import SwiftUI

enum ColorPalleteEnum: String {
    case cyan, yellow, white
    
    var getValue: Color {
        if self == .white {
            return Color(.white)
            
        }
            
        return Color(rawValue)
    }
}
