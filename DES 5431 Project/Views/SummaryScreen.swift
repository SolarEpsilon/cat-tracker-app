//
//  SummaryScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI

struct SummaryScreen: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Text("Daily Summary")
                    .font(.largeTitle)
                    .bold()
                
                Text("Today (Mar 17, 2025)")
                    .font(.title)
                
                // Pet Image
                Image("cat-watercolor")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200) // Adjusted for better centering
                    .clipShape(RoundedRectangle(cornerRadius: 16)) // More rounded edges
                

                VStack(alignment: .leading, spacing: 12) { // Added spacing between text
                    Text("Mood")
                        .bold()
                        .foregroundColor(Color.brandGreen)
                    Text("Happy: 4h")
                    Text("Bored: 2h")
                    
                    Divider()
                    
                    Text("Activity")
                        .bold()
                        .foregroundColor(Color.brandGreen)
                    Text("Playing: 4h")
                    Text("Sleeping: 9h")
                    
                    Divider()
                    
                    Text("Suggestion")
                        .bold()
                        .foregroundColor(Color.brandGreen)
                    Text("Spot should drink more...")
                    
                }
                .font(.title2)
                // Left and right padding
                .padding(.horizontal, 24)
            }
        }
        .padding(.horizontal)
    }
}
