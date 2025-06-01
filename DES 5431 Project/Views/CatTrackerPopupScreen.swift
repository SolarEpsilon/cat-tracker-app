//
//  CatTrackerPopupScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//

import Foundation
import SwiftUI

// MARK: - Cat Tracker Popup Screen
struct CatTrackerScreen: View {
    @Binding var isTrackingActive: Bool
    @State private var catDistance = "8 ft away" // Example distance
    @State private var arrowDirection: Double = 45 // Mock angle, change dynamically later

    var body: some View {
        ZStack {
            // Apple-style light green background
            Color.brandGreen.opacity(1.0)
                .edgesIgnoringSafeArea(.all)

            VStack {
                // Back button
                HStack {
                    Button(action: {
                        isTrackingActive = false
                    }) {
                        Image(systemName: "arrow.left")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding()
                            .background(Circle().fill(Color.white).shadow(radius: 5))
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                }
                
                Spacer()
                
                // Distance Indicator
                Text(catDistance)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()

                // Direction Arrow (Mock Airtag-style)
                Image(systemName: "location.north.fill") // Arrow shape
                    .font(.system(size: 80))
                    .foregroundColor(.black)
                    .rotationEffect(.degrees(arrowDirection)) // Rotate dynamically
                    .padding()
                
                Spacer()

                // Large Cat Paw Icon (indicating tracking)
                Image(systemName: "pawprint.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.black)
                    .padding()

                Spacer()

                // Bottom Buttons
                HStack {
                    // Catnip Button (bottom left)
                    Button(action: {
                        print("Catnip activated!")
                    }) {
                        Circle()
                            .fill(Color.yellow.opacity(0.8))
                            .frame(width: 80, height: 80)
                            .overlay(
                                Image(systemName: "leaf.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                            )
                    }
                    .padding(.leading, 40)

                    Spacer()

                    // Volume Button (bottom right)
                    Button(action: {
                        print("Playing sound for cat!")
                    }) {
                        Circle()
                            .fill(Color.blue.opacity(0.8))
                            .frame(width: 80, height: 80)
                            .overlay(
                                Image(systemName: "speaker.wave.3.fill")
                                    .font(.title)
                                    .foregroundColor(.white)
                            )
                    }
                    .padding(.trailing, 40)
                }
                .padding(.bottom, 40)
            }
        }
        .navigationBarHidden(true) // Hide default navigation bar
    }
}
