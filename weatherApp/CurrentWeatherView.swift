//
//  CurrentWeatherView.swift
//  weatherApp
//
//  Created by chevy on 10/22/25.
//

import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
        VStack {
            Text("Chapel Hill")
                .font(.system(size: 34, weight: .regular))
                .foregroundColor(.white)
                .shadow(radius: 5)
            Text("64°")
                .font(.system(size: 110, weight: .thin))
                .foregroundColor(.white)
                .shadow(radius: 5)
            Text("Clear")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white.opacity(0.8))
                .shadow(radius: 5)
            Text("H:72° L:48°")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
                .shadow(radius: 5)
        }
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

        VStack {
            CurrentWeatherView()
        }
    }.ignoresSafeArea()
}
