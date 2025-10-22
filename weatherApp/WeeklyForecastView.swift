//
//  WeeklyForecastView.swift
//  weatherApp
//
//  Created by chevy on 10/22/25.
//

import SwiftUI

let Days = [
    Day(day: "Today", high: 72, low: 48, icon: "sun.max.fill"),
    Day(day: "Thu", high: 67, low: 44, icon: "sun.max.fill"),
    Day(day: "Fri", high: 64, low: 43, icon: "sun.max.fill"),
    Day(day: "Sat", high: 63, low: 40, icon: "cloud.sun.fill"),
    Day(day: "Sun", high: 64, low: 42, icon: "cloud.fill"),
    Day(day: "Mon", high: 57, low: 48, icon: "cloud.rain.fill"),
    Day(day: "Tue", high: 60, low: 49, icon: "cloud.bolt.rain.fill"),
    Day(day: "Wed", high: 59, low: 47, icon: "cloud.rain.fill"),
    Day(day: "Thu", high: 56, low: 45, icon: "cloud.sun.fill"),
    Day(day: "Fri", high: 60, low: 47, icon: "cloud.sun.fill"),
]

struct WeeklyForecastView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 12) {
                Label("10-DAY FORECAST", systemImage: "calendar")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.8))
                ForEach(Days) { day in
                    HStack {
                        Text(day.day)
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(width: 60, alignment: .leading)
                        
                        Spacer()
                        
                        Image(systemName: day.icon)
                            .font(.system(size: 20))
                            .symbolRenderingMode(.palette)
                            .foregroundStyle(
                                (day.icon == "cloud.sun.fill" || day.icon == "cloud.rain.fill" || day.icon == "cloud.fill" || day.icon == "cloud.bolt.rain.fill") ? .white : .yellow,
                                (day.icon == "cloud.rain.fill" || day.icon == "cloud.bolt.rain.fill") ? .blue : .yellow
                            )
                        
                        Spacer()
                        
                        Text("\(day.low)°")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white.opacity(0.7))
                        
                        RoundedRectangle(cornerRadius: 16)
                            .fill(
                                LinearGradient (
                                    colors: [.cyan,
                                        .orange],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                )
                            )
                            .frame(width: 100, height: 4)
                        
                        Text("\(day.high)°")
                            .font(.system(size: 20, weight: .semibold))
                            .foregroundColor(.white)
                        
                        
                    }
                    
                }
            }
            
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white.opacity(0.2))
        )
    }
}

#Preview {
    ZStack {
        LinearGradient(
            colors: [
                Color(red: 0.3, green: 0.6, blue: 0.9),
                Color(red: 0.4, green: 0.7, blue: 1.0),
            ],
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
        VStack{
            HourlyForecastView()
            WeeklyForecastView()
        }
        .padding()
    }
}
