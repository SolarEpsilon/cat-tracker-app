//
//  AIPetLogEntryView.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//
import SwiftUI

struct PetLogEntryView: View {
    let log: PetLogEntry
    @Binding var playingAudioID: UUID?

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            // Date with calendar icon
            HStack {
                Image(systemName: "calendar")
                    .foregroundColor(.gray)
                Text(log.date)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            // Title
            Text(log.title)
                .font(.headline)
                .fontWeight(.bold)

            
            // Audio wave
            HStack {
                            AudioWaveformView()
                                .frame(height: 30)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(5)

                            Spacer()

                            Button(action: {
                                if playingAudioID == log.id {
                                    playingAudioID = nil // Stop playback
                                } else {
                                    playingAudioID = log.id // Start playback
                                }
                            }) {
                                Image(systemName: playingAudioID == log.id ? "pause.fill" : "play.fill")
                                    .foregroundColor(.brandGreen)
                                    .padding()
                            }
                        }

            // Image + Text Row
            HStack {
                ForEach(log.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 160, height: 400)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .shadow(radius: 2)
                        .clipped()
                }

                Text(log.text)
                    .font(.body)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)

                Spacer()
            }
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color.black).shadow(radius: 2))
        .padding(.horizontal)
    }
}
