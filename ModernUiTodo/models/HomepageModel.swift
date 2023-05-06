//
//  HomepageModel.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import Foundation
import SwiftUI

struct HomepageModel {
    var greetingMessage: String
    var date: Date
    var profileImageUrl: String
    var userName: String
    var todoList: [TodoModel]
}

var sampleHomepageData = HomepageModel(
                            greetingMessage: "Good Morning",
                            date: Date.now,
                            profileImageUrl: "https://picsum.photos/500",
                            userName: "Cipher",
                            todoList: [
                                TodoModel(id: 1, title: "Buy groceries", description: "Milk, bread, eggs", createdAt: Date(), createdBy: "John Doe", cardColor: ColorPalleteEnum.yellow.getValue),
                                TodoModel(id: 2, title: "Finish homework", description: "Math and science assignments", createdAt: Date(), createdBy: "Jane Smith", cardColor: ColorPalleteEnum.white.getValue),
                                TodoModel(id: 3, title: "Clean house", description: "Vacuum, dust, and mop", createdAt: Date(), createdBy: "Bob Johnson", cardColor: ColorPalleteEnum.yellow.getValue),
                                TodoModel(id: 4, title: "Go for a run", description: "5 miles around the park", createdAt: Date(), createdBy: "Alice Lee", cardColor: ColorPalleteEnum.cyan.getValue),
                                TodoModel(id: 5, title: "Attend meeting", description: "Discuss new project proposals", createdAt: Date(), createdBy: "Tom Wilson", cardColor: ColorPalleteEnum.cyan.getValue),
                                TodoModel(id: 6, title: "Pay bills", description: "Rent, utilities, and credit card", createdAt: Date(), createdBy: "Samantha Brown", cardColor: ColorPalleteEnum.yellow.getValue),
                                TodoModel(id: 7, title: "Organize closet", description: "Donate old clothes", createdAt: Date(), createdBy: "David Kim", cardColor: ColorPalleteEnum.white.getValue),
                                TodoModel(id: 8, title: "Call friend", description: "Check in on their well-being", createdAt: Date(), createdBy: "Emily Davis", cardColor: ColorPalleteEnum.cyan.getValue),
                                TodoModel(id: 9, title: "Study for exam", description: "History and English", createdAt: Date(), createdBy: "Mike Chen", cardColor: ColorPalleteEnum.yellow.getValue),
                                TodoModel(id: 10, title: "Prepare presentation", description: "Powerpoint slides and handouts", createdAt: Date(), createdBy: "Laura Garcia", cardColor: ColorPalleteEnum.cyan.getValue),
                                TodoModel(id: 11, title: "Book flight", description: "Roundtrip to Paris", createdAt: Date(), createdBy: "Steve Jones", cardColor: ColorPalleteEnum.yellow.getValue),
                                TodoModel(id: 12, title: "Order takeout", description: "Pizza and wings", createdAt: Date(), createdBy: "Anna Kim", cardColor: ColorPalleteEnum.white.getValue),
                                TodoModel(id: 13, title: "Watch movie", description: "Action thriller", createdAt: Date(), createdBy: "Chris Lee", cardColor: ColorPalleteEnum.white.getValue),
                                TodoModel(id: 14, title: "Go to the gym", description: "Weightlifting and cardio", createdAt: Date(), createdBy: "Sarah Smith", cardColor: ColorPalleteEnum.cyan.getValue),
                                TodoModel(id: 15, title: "Finish book", description: "Mystery novel", createdAt: Date(), createdBy: "Matt Johnson", cardColor: ColorPalleteEnum.cyan.getValue),
                                TodoModel(id: 16, title: "Buy birthday gift", description: "For friend's party", createdAt: Date(), createdBy: "Julie Brown", cardColor: ColorPalleteEnum.yellow.getValue),
                                TodoModel(id: 17, title: "Attend concert", description: "Rock band performance", createdAt: Date(), createdBy: "Alex Kim", cardColor: ColorPalleteEnum.cyan.getValue),

                            ]
                        )
