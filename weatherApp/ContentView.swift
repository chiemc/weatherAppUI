//
//  ContentView.swift
//  weatherApp
//
//  Created by chevy on 10/22/25.
//

import SwiftUI

struct Hour: Identifiable {
    let id = UUID()
    let time: String
    let temperature: Int
    let icon: String
}

struct Day: Identifiable {
    let id = UUID()
    let day: String
    let high: Int
    let low: Int
    let icon: String
}

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color(red: 71/255, green: 104/255, blue: 155/255), location: 0.00),
                    .init(color: Color(red: 83/255, green: 115/255, blue: 169/255), location: 0.45),
                    .init(color: Color(red: 139/255, green: 142/255, blue: 176/255), location: 0.80),
                    .init(color: Color(red: 156/255, green: 146/255, blue: 175/255), location: 1.00)
                    ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .opacity(0.98)
            .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 0) {
                    CurrentWeatherView()
                        .padding(.top, 70)
                        .padding(.bottom, 80)
                    HourlyForecastView()
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    WeeklyForecastView()
                        .padding(.horizontal)
                        .padding(.bottom, 40)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
