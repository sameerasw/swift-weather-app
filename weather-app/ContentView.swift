//
//  ContentView.swift
//  weather-app
//
//  Created by Sameera Sandakelum on 2025-07-26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Balangoda, Sri Lanka")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing: 10) {
                 Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("27°")
                        .font(.system(size: 90, weight: .medium))
                        .foregroundColor(.white)
                }
                HStack{
                    ExtractView()
                }
                Spacer()
            }
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("TUE")
                .foregroundColor(.white)
            Image(systemName: "sun.min.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("28°")
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}
