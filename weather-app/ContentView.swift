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
            BackgroundView(topColor: .blue, bottomColor: Color("lightBlue"))
            VStack {
                CityTextView(cityName: "Balangoda, Sri Lanka")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temprature: 27)
                .padding(.bottom, 40)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temprature: 28)
                    WeatherDayView(dayOfWeek: "WED", imageName: "cloud.fog.fill", temprature: 29)
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.max.fill", temprature: 31)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "wind.snow", temprature: 25)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "sunset.fill", temprature: 32)
                }
                Spacer()
                
                Button{
                    print("tapped")
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temprature: Int
    
    var body: some View {
        VStack(spacing: 12) {
            Text(dayOfWeek)
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temprature)°")
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View{
        LinearGradient(gradient: Gradient(colors: [topColor ,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        
        Text(cityName)
            .font(.title)
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temprature: Int
    
    var body: some View{
        VStack(spacing: 10) {
         Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temprature)°")
                .font(.system(size: 90, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
