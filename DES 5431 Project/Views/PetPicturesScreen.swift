//
//  PetPicturesScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI

struct PetPicturesScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var playingAudioID: UUID? = nil // Track which entry is playing

    // Sample data
    let petLogs: [PetLogEntry] = [
        PetLogEntry(id: UUID(), date: "Feb 20, 2025", title: "The Daily Watch 📬🐱", audioFile: "audio1", text: "The mail carrier approaches, and Spot’s gaze sharpens. Friend or foe? A flick of the tail, a moment of contemplation… then back to business. The routine of the world unfolds, one delivery at a time.", images: ["garden-1"]),
        
        PetLogEntry(id: UUID(), date: "Feb 19, 2025", title: "Climbing High 🏡🧗‍♂️", audioFile: "audio2", text: "A wooden ladder leading to the ultimate outdoor perch—Spot’s personal throne. A few careful steps, a graceful leap, and the world below looks just a little smaller. Time for a well-earned stretch in the sun.", images: ["garden-3", "garden-4"]),
        
        PetLogEntry(id: UUID(), date: "Mar 14, 2025", title: "Blossoms & Whiskers 🌸🐾", audioFile: "audio2", text: "Spot pauses to admire a cluster of bright flowers swaying gently in the breeze. Their petals catch the sunlight, creating a soft, dreamy glow. A curious sniff, a twitch of the ears—nature is full of tiny wonders.", images: ["garden-5"]),
    ]
    
    var body: some View {
        VStack {
            // Header
            VStack {
                Text("Spot's Pictures")
                    .font(.title2)
                    .fontWeight(.bold)
                Text("Started Aug 2022")
            }
            .padding(.horizontal)
            
            // Pet log entries list
            ScrollView {
                ForEach(petLogs) { log in
                    VStack(alignment: .leading, spacing: 8) {
                        // Date with calendar icon
                        HStack {
                            Image(systemName: "calendar")
                                .foregroundColor(.gray)
                            Text(log.date)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }

                        // Image + Text Row
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                VStack {
                                    ForEach(log.images, id: \.self) { imageName in
                                        Image(imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 400, height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                            .shadow(radius: 2)
                                    }
                                }
                            }

                            Spacer()
                        }
                        
                        // Title
                        Text(log.title)
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        // Text
                        Text(log.text)

                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 12).fill(Color.black).shadow(radius: 2))
                    .padding(.horizontal)
                }
            }
        }
        .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
    }
}
