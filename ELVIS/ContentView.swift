//
//  ContentView.swift
//  ELVIS
//
//  Created by natural health on 1/24/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
                
            Spacer()
            HStack {
                Button("Peace"){
                    message = "Peace"
                    imageName = "peacesign"
                }
                Button("Love"){
                    message = "Love"
                    imageName = "heart"
                }
                Button("Understanding"){
                    message = "Understanding"
                    imageName = "lightbulb"
                }
            }
        
    .buttonStyle(.borderedProminent)
    .font(.title2)
    .tint(.pink)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
