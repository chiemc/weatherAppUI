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
                    .init(color: Color(red: 34/255, green: 58/255, blue: 99/255), location: 0.00),
                    .init(color: Color(red: 85/255, green: 91/255, blue: 132/255), location: 0.45),
                    .init(color: Color(red: 117/255, green: 110/255, blue: 137/255), location: 0.80),
                    .init(color: Color(red: 177/255, green: 142/255, blue: 129/255), location: 1.00)
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
