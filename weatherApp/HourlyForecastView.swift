//
//  HourlyForecastView.swift
//  weatherApp
//
//  Created by chevy on 10/22/25.
//

import SwiftUI

let Hours = [
    Hour(time: "Now", temperature: 69, icon: "sun.max.fill"),
    Hour(time: "2PM", temperature: 71, icon: "sun.max.fill"),
    Hour(time: "3PM", temperature: 71, icon: "sun.max.fill"),
    Hour(time: "4PM", temperature: 71, icon: "sun.max.fill"),
    Hour(time: "5PM", temperature: 70, icon: "sun.max.fill"),
    Hour(time: "6PM", temperature: 67, icon: "sun.max.fill"),
    Hour(time: "6:31PM", temperature: 67, icon: "sunset.fill"),
    Hour(time: "7PM", temperature: 62, icon: "moon.stars.fill"),
    Hour(time: "8PM", temperature: 59, icon: "moon.stars.fill"),
    Hour(time: "9PM", temperature: 56, icon: "moon.stars.fill"),
    Hour(time: "10PM", temperature: 55, icon: "moon.stars.fill"),
    Hour(time: "11PM", temperature: 53, icon: "moon.stars.fill"),
    Hour(time: "12AM", temperature: 52, icon: "moon.stars.fill"),
    Hour(time: "1AM", temperature: 51, icon: "moon.stars.fill"),
    Hour(time: "2AM", temperature: 49, icon: "moon.stars.fill"),
    Hour(time: "3AM", temperature: 48, icon: "moon.stars.fill"),
    Hour(time: "4AM", temperature: 47, icon: "moon.stars.fill"),
    Hour(time: "5AM", temperature: 45, icon: "moon.stars.fill"),
    Hour(time: "6AM", temperature: 45, icon: "moon.stars.fill"),
    Hour(time: "7AM", temperature: 44, icon: "moon.stars.fill"),
    Hour(time: "7:30AM", temperature: 44, icon: "sunrise.fill"),
    Hour(time: "8AM", temperature: 44, icon: "sun.max.fill"),
    Hour(time: "9AM", temperature: 49, icon: "sun.max.fill"),
    Hour(time: "10AM", temperature: 55, icon: "sun.max.fill"),
    Hour(time: "11AM", temperature: 59, icon: "sun.max.fill"),
    Hour(time: "12PM", temperature: 63, icon: "sun.max.fill"),
    Hour(time: "1PM", temperature: 65, icon: "sun.max.fill"),
]

struct HourlyForecastView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Label("HOURLY FORECAST", systemImage: "clock")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.white.opacity(0.8))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 23) {
                    ForEach(Hours) { hour in
                        VStack(spacing: 10) {
                            Text(hour.time)
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.white)

                            Image(systemName: hour.icon)
                                .font(.system(size: 18))
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(
                                    (hour.icon == "sunset.fill"
                                        || hour.icon == "sunrise.fill")
                                        ? .white
                                        : (hour.icon.contains("moon")
                                            ? .white : .yellow),
                                    (hour.icon == "sunset.fill"
                                        || hour.icon == "sunrise.fill")
                                        ? .yellow
                                        : (hour.icon.contains("moon")
                                            ? .white : .yellow)
                                )

                            Text(
                                hour.icon == "sunset.fill"
                                    ? "Sunset"
                                    : hour.icon == "sunrise.fill"
                                        ? "Sunrise" : "\(hour.temperature)°"
                            )
                            .font(.system(size: 18, weight: .medium))
                            .foregroundColor(.white)
                        }
                    }

                }.foregroundColor(.white)
                    .fontWeight(.semibold)
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

        HourlyForecastView()
            .padding()
    }
}
