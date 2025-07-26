//
//  WeatherButton.swift
//  weather-app
//
//  Created by Sameera Sandakelum on 2025-07-26.
//
import SwiftUI

struct WeatherButton: View {
    var isNight: Bool
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50, alignment: .center)
            .foregroundColor(isNight ? .white : .black)
            .background(isNight ? Color.blue.gradient : Color.white.gradient)
            .cornerRadius(10)
    }
}
