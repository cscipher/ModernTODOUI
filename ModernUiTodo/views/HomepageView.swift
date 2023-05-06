//
//  HomepageView.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import SwiftUI

struct HomepageView: View {
    
    private let dateFormatter = DateFormatter()
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {

                LinearGradient(
                    colors: [.black,Color("BackgroundBlue"),Color("BackgroundBlue")],
                    startPoint: .top,
                    endPoint: .bottom
                ).edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading) {
                    HStack {
                        AsyncImage(
                            url: URL(string: sampleHomepageData.profileImageUrl),
                            content: { image in
                                image.resizable()
                                    .scaledToFit()
                                    .frame(width:50, height: 50)
                                    .cornerRadius(100)
                                     
                            },
                            placeholder: {
                                ProgressView()
                            }
                        )
                        Spacer()
                            .frame(width:16)
                        
                        Text("Hey \(sampleHomepageData.userName)!")
                            .foregroundColor(.white)
                            .fontWeight(.medium)
                            .font(.title2)
                    }
                    Spacer()
                        .frame(height: 30)
                    
                    Text(sampleHomepageData.greetingMessage)
                        .font(.system(size: 60, weight: .medium))
                        .foregroundColor(Color("PrimaryBlue"))
                    
                    Spacer()
                        .frame(height: 30)
                    
                    Text("Today's \(getWeekDay(sampleHomepageData.date))")
                        .foregroundColor(.white)
                    Text(formatDate(sampleHomepageData.date))
                        .foregroundColor(.gray)
                        .font(.callout)
                        Spacer()
                            .frame(height: 50)
                        
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea(.all, edges: .bottom)
                
                DraggableTodoSheet()
            }
        }

    }
    
    func getWeekDay(_ date: Date) -> String {
        let i = Calendar.current.component(.weekday, from: sampleHomepageData.date)
        return dateFormatter.weekdaySymbols[i-1]
    }
    
    func formatDate(_ date: Date) -> String {
        dateFormatter.dateFormat = "MMM d, yyyy"
        return dateFormatter.string(from: date)
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
