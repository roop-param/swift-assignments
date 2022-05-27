//
//  LaunchScreen.swift
//  NewProject
//
//  Created by paramroop kaur on 05/04/22.
//

import SwiftUI

struct LaunchScreen: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
       
        if isActive {
            ContentView()
        }
        else {
            VStack {
                VStack {
                    Image(systemName: "cloud.fill" )
                        .font(.system(size: 80))
                        .foregroundColor(.blue)
                        .shadow(color: .blue.opacity(10.0), radius: 5 , x:0 , y: 5 )
                        
                        .padding()
                    
                    Text("The Abstract BLACK")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                        .foregroundColor(.blue.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    
                    withAnimation(.interpolatingSpring(stiffness: 10, damping: 1.0))
                    {
                        self.size = 0.9
                        self.opacity = 1.0
                        
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0)
                {
                    withAnimation {
                    self.isActive = true
                    }
                }
            }
        }
            
        }
       
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
