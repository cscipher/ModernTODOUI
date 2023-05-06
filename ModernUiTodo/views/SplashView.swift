//
//  SplashView.swift
//  ModernUiTodo
//
//  Created by Harsh Soni on 06/05/23.
//

import SwiftUI

struct SplashView: View {
    
    @State private var scale = 0.6
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            HomepageView()
        }
        else {
            ZStack {
                Color("BackgroundBlue")
                    .ignoresSafeArea()
                
                VStack {
                    Image("splash")
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(scale)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                self.scale = 0.8
                            }
                        }
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                self.isActive = true
                            }
                        }
                    
                    Text("Master Your Day with Our Todo App: Your Ultimate Productivity Partner!")
                        .multilineTextAlignment(.center)
                        .font(.system(.body, weight: .regular))
                        .foregroundColor(Color("PrimaryBlue"))
                }
                .padding()
            }
        }
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
