//
//  ContentView.swift
//  Elvis
//
//  Created by Derek Meyers on 3/13/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            
            Text("What's So Funny 'Bout?")
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
                .multilineTextAlignment(.center)
            
                Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .frame(width: 300, height: 300)
                .foregroundStyle(.black)
            Text(message)
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    imageName = "peacesign"
                    message = "PEACE"
                }
                Button("Love") {
                    imageName = "heart.circle"
                    message = "LOVE"
                }
                Button("Understanding") {
                    imageName = "lightbulb.circle"
                    message = "UNDERSTANDING"
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.purple)
            
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
