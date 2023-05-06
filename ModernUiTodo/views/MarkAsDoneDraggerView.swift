//
//  MarkAsDoneDraggerView.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import SwiftUI
import Dragger

struct CustomDraggerStyle: DraggerStyle {
    var insets: CGFloat = 5
        
        var thumbSize: CGSize = CGSize(width: 48, height: 48)
        
        var trackHeight: CGFloat = 50
        
        func makeBody(configuration: Configuration) -> some View {
            Color("BackgroundBlue")
                .clipShape(Capsule())
                .overlay {
                    Text("Slide to mark as done")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                }
        }
        
        func makeTrack(configuration: Configuration) -> some View {
//            Color(.green)
            Color("BackgroundBlue")
                .clipShape(Capsule())
        }
        
        func makeThumb(configuration: Configuration) -> some View {
            Circle()
                .foregroundColor(.white)
                .padding(.horizontal, 2)
                .overlay {
                    Image(systemName: "checkmark")
                        .fontWeight(.bold)
                        .foregroundColor(Color("BackgroundBlue"))
                }
        }
        
}

struct MarkAsDoneDraggerView: View {
    
    @State var isComplete: Bool = false

    var body: some View {
        if !isComplete {
            Dragger(isComplete: $isComplete)
                .draggerStyle(CustomDraggerStyle())

        } else {
            Spacer().frame(width: 0)
        }
    }
}

struct MarkAsDoneDraggerView_Previews: PreviewProvider {
    static var previews: some View {
        MarkAsDoneDraggerView()
    }
}
