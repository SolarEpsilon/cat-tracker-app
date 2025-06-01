//
//  AIPhotoCapturesScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//

import SwiftUI

struct PhotoCapsScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var playingAudioID: UUID? = nil // Track which entry is playing

    // Sample data
    let petLogs: [PetLogEntry] = [
        PetLogEntry(id: UUID(), date: "Feb 20, 2025", title: "Exciting Raccoon Sighting!", audioFile: "audio1", text: "", images: ["raccoon-3", "raccoon-1"]),
        
        PetLogEntry(id: UUID(), date: "Feb 19, 2025", title: "Baby Chipmunks", audioFile: "audio2", text: "", images: ["chipmunk-3", "chipmunk-2"]),
    ]
    
    var body: some View {
        VStack {
            // Header
            VStack {
                Text("AI Photo Captures")
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
                                .foregroundColor(.brandGreen)
                            Text(log.date)
                                .font(.subheadline)
                                .foregroundColor(.brandGreen)
                        }
                        
                        // Title
                        Text(log.title)
                            .font(.headline)
                            .fontWeight(.bold)

                        // Image + Text Row
                        VStack {
                            ScrollView(.horizontal, showsIndicators: false) {
                                VStack {
                                    ForEach(log.images, id: \.self) { imageName in
                                        Image(imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(height: 200)
                                            .clipShape(RoundedRectangle(cornerRadius: 8))
                                            .shadow(radius: 2)
                                    }
                                }
                            }

                            Spacer()
                        }
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
