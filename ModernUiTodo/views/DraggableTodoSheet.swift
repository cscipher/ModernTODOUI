//
//  DraggableTodoSheet.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 04/05/23.
//

import SwiftUI

struct TodoSheetConent: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer().frame(height: 20)
            HStack(alignment: .center) {
                Text("Tasks")
                    .font(.system(size: 40, weight: .thin))
                    .foregroundColor(Color("PrimaryBlue"))
                
                Text("\(sampleHomepageData.todoList.count)")
                    .padding(
                        EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8)
                    )
                    .fontWeight(.semibold)
                    .background(Color(.white))
                    .cornerRadius(100)
                
                Spacer()
                
                Button {
                    print("demo!")
                } label: {
                    Circle()
                        .fill(Color("PrimaryBlue"))
                        .frame(width: 40)
                        .padding(.all, 4)
                        .overlay {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                        }
                }
                
            }
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(sampleHomepageData.todoList) { todo in
                        return TodoCardView(todoCardModel: todo)
                    }
                }
                Spacer().frame(height: 100)
            }
        }
        .padding()
    }
}

struct BlurViewBackground : UIViewRepresentable {
    
    var style : UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {}
}


struct RoundedCornerShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct DraggableTodoSheet: View {
    
    @State private var offset: CGFloat = UIScreen.main.bounds.height/2.5
    @State private var lastOffset: CGFloat = 0
    @GestureState private var gestureOffset: CGFloat = 0

    
    var body: some View {
        
        GeometryReader{proxy -> AnyView in
            
            return AnyView(
                ZStack {
                    BlurViewBackground(style: .systemThinMaterialDark)
                        .clipShape(RoundedCornerShape.init(corners: [.topLeft, .topRight], radius: 20))
                    TodoSheetConent()
                    VStack {
                        Capsule()
                            .fill(Color.white)
                            .frame(width: 60,height: 4)
                            .padding(.top)
                    }.frame(maxHeight: .infinity, alignment: .top)
                }
                    .offset(y: offset)
                    .gesture(
                        DragGesture()
                            .updating($gestureOffset, body: { value, out, _ in
                        out = value.translation.height
                        changePosition()
                            })
                            .onEnded({ value in
                                withAnimation {
                                    if -offset > 10 {
                                        offset = 100
                                    } else {
                                        offset = UIScreen.main.bounds.height/2.5
                                    }
                                }
                                lastOffset = offset
                            }))
            )
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    func changePosition() -> Void {
        DispatchQueue.main.async {
            self.offset = gestureOffset + lastOffset
        }
    }
}
