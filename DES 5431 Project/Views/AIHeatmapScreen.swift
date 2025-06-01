//
//  AIHeatmapScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI

struct AIHeatmapScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 16) {
            // Title & Subtitle
            VStack(spacing: 4) {
                Text("AI Heat Map")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Spot’s route and favorite spots! August 2022 to January 2025")
            }
            .padding(.horizontal)

            // Large Heatmap Image
            Image("heatmap")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: 500) // Adjust height as needed
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 4)

            Spacer()
        }
        .padding()
        .background(Color.black.ignoresSafeArea())
    }
}
