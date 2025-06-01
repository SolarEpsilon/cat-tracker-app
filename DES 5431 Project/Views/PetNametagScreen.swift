//
//  PetNametagScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI

struct PetNametagScreen: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) { // Reduced spacing between title and subtitle
                Text("Spot's Nametag")
                    .font(.largeTitle)
                    .bold()
                
                Text("612-123-4567")
                    .font(.title)
                
                // Pet Image
                Image("cat-2")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 200) // Adjusted for better centering
                    .clipShape(RoundedRectangle(cornerRadius: 16)) // More rounded edges
                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black, lineWidth: 4)) // Black border
                    .shadow(radius: 4)
                    .padding(.vertical, 16) // Added padding to keep it centered

                // Pet Details
                VStack(alignment: .leading, spacing: 12) { // Added spacing between text
                    Text("🐈 Breed: Tabby")
                    
                    Divider()
                    
                    Text("🎂 Age: 3 years")
                    
                    Divider()
                    
                    Text("📱 Number: 612-123-4567")
                    
                    Divider()
                    
                    Text("👤 Owner: Jane Doe")
                }
                .font(.title2) // Made the font slightly smaller for better readability
                .padding(.horizontal, 24) // Added left and right padding
            }
        }
        .padding(.horizontal)
    }
}
