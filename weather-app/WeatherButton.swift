//
//  WeatherButton.swift
//  weather-app
//
//  Created by Sameera Sandakelum on 2025-07-26.
//
import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50, alignment: .center)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}
