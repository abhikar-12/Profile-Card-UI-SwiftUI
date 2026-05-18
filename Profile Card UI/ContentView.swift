//
//  ContentView.swift
//  IOS Prac
//
//  Created by Abhishek Kusalkar on 18/05/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            
            Color.gray.opacity(0.1)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                // Top Section
                ZStack {
                    
                    Color.blue
                    
                    Image("Profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 4)
                        )
                        .shadow(radius: 5)
                }
                .frame(height: 220)
                
                // Bottom Section
                VStack(spacing: 12) {
                    
                    Text("James Smith")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("iOS Developer")
                        .font(.title3)
                        .foregroundColor(.gray)
                    
                    Text("Passionate about iOS Development")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Button {
                        print("Follow tapped")
                    } label: {
                        Text("Follow")
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 200)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
            }
            .frame(width: 350, height: 450)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(radius: 10)
        }
    }
}

#Preview {
    ContentView()
}
