//
//  TodoCardView.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import SwiftUI

struct TodoCardView: View {
    var todoCardModel: TodoModel
    var body: some View {
        NavigationLink(destination: TodoDescriptiveView(todoModel: todoCardModel)) {
            HStack {
                VStack(alignment: .leading){
                    Text(todoCardModel.title)
                        .font(.system(size: 30, weight: .regular))
                        .foregroundColor(.black)
                    Text(todoCardModel.description)
                        .font(.system(.body, weight: .light))
                        .foregroundColor(.black)
                }
                    

                Spacer()
                Button {
                    print("dattebayo")
                } label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }

            }
            .padding(.all, 20)
            .background(todoCardModel.cardColor)
            .cornerRadius(40)
        }
    }
}

struct TodoCardView_Previews: PreviewProvider {
    static var previews: some View {
        TodoCardView(todoCardModel: sampleHomepageData.todoList[0])
    }
}
