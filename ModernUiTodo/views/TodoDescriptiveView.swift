//
//  TodoDescriptiveView.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import SwiftUI

struct TodoDescriptiveView: View {
    let todoModel : TodoModel
    
    private let dateFormatter = DateFormatter()
    
    var body: some View {
        ZStack {
            todoModel.cardColor.ignoresSafeArea()
            VStack(alignment: .leading) {
                
//                Button {
//                    print("Go back")
//                } label: {
//                    Circle()
//                        .foregroundColor(Color("BackgroundBlue"))
//                        .frame(width: 64)
//                        .padding(.horizontal, 2)
//                        .overlay {
//                            Image(systemName: "chevron.backward")
//                                .fontWeight(.bold)
//                                .foregroundColor(.white)
//                        }
//                }
//
                Spacer()

                
                VStack(alignment: .leading) {
                    Text(todoModel.title)
                        .font(.system(size: 70,weight: .semibold))
                    
                    Spacer().frame(height: 50)
                    
                    Text("Additional Description")
                        .foregroundColor(.black.opacity(0.4))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer().frame(height: 6)
                    
                    Text(todoModel.description)
                    
                    Spacer().frame(height: 50)
                    
                    Text("Created")
                        .foregroundColor(.black.opacity(0.4))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer().frame(height: 6)
                    
                    HStack {
                        Text("\(formatDate(todoModel.createdAt)), by \(todoModel.createdBy)")
                        
                        AsyncImage(
                            url: URL(string: sampleHomepageData.profileImageUrl),
                            content: { image in
                                image.resizable()
                                    .scaledToFit()
                                    .frame(width:24, height: 24)
                                    .cornerRadius(100)
                                     
                            },
                            placeholder: {
                                ProgressView()
                            }
                        )
                    }
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    MarkAsDoneDraggerView()
                        .padding(EdgeInsets(top: 100, leading: 20, bottom: 0, trailing: 20))
                    Spacer()
                }
                    
                
            }
            .frame(
                minWidth: 0,
                maxWidth: .infinity,
                alignment: .topLeading
              )
            .padding(.all, 16)
        }
    }
    func formatDate(_ date: Date) -> String {
        dateFormatter.dateFormat = "MMM d"
        return dateFormatter.string(from: date)
    }
}

struct TodoDescriptiveView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDescriptiveView(todoModel: sampleHomepageData.todoList[0])
    }
}
