//
//  AIPetLogsScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//
import SwiftUI

struct AIPetLogsScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var playingAudioID: UUID? = nil // Track which entry is playing

    // Sample data
    let petLogs: [PetLogEntry] = [
        PetLogEntry(id: UUID(), date: "Feb 20, 2025", title: "Raccoon Sighting", audioFile: "audio1", text: "It was 12:07, just after midnight. Spot rounded the corner to begin the walk home, when suddenly, she saw a giant raccoon! Feeling a spike of fear, she turned tail and ran. The raccoon hissed! Spot raced inside the cat door into the house, safe.", images: ["raccoon-4"]),
        PetLogEntry(id: UUID(), date: "Feb 18, 2025", title: "Rainy Day", audioFile: "audio3", text: "All day, Spot tried to find something to do outside during the rain. Instead, the rain just kept raining! After a while, Spot decided to spend her time sleeping instead.", images: ["rain"])
    ]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                // Header with back button
                VStack {
                    Text("AI Pet Logs")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("Started Aug 2022")
                }
                .padding(.horizontal)
                
                // Load each card (picture, text, title, audio wavelength)
                List(petLogs) { log in
                    PetLogEntryView(log: log, playingAudioID: $playingAudioID)
                        .listRowInsets(EdgeInsets())
                        // Remove automatic flash when clicked
                        .listRowBackground(Color.clear)
                }
                .listStyle(PlainListStyle())
            }
            .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
        }
    }
}
