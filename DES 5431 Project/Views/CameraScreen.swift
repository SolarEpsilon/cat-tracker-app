//
//  CameraScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//
import SwiftUI

struct CameraScreen: View {
    @State private var navigateToPetPictures = false  // Declare the state variable

    var body: some View {
        NavigationStack {  // Ensure NavigationStack wraps the content
            ZStack {
                // Camera Preview
                Image("grass")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    // 🔹 Top Bar (Flash & Settings)
                    HStack {
                        Button(action: {
                            // Flash toggle action
                        }) {
                            Image(systemName: "bolt.fill")
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding()
                                .background(Color.black.opacity(0.4))
                                .clipShape(Circle())
                        }

                        Spacer()

                        Button(action: {
                            // Settings action
                        }) {
                            Image(systemName: "gearshape.fill")
                                .foregroundColor(.white)
                                .font(.title2)
                                .padding()
                                .background(Color.black.opacity(0.4))
                                .clipShape(Circle())
                        }
                    }
                    .padding()

                    Spacer()

                    // Bottom Controls (Shutter, Gallery button)
                    VStack(spacing: 8) {
                        Text("This is what Spot is seeing right now!")
                            .foregroundColor(.white)
                            .font(.footnote)
                            .padding(.bottom, 8)

                        HStack {
                            // Shutter Button
                            Button(action: {
                                // Capture action
                            }) {
                                Circle()
                                    .strokeBorder(Color.white, lineWidth: 4)
                                    .background(Circle().fill(Color.black.opacity(0.2)))
                                    .frame(width: 75, height: 75)
                            }

                            // Open Gallery Button
                            Button(action: {
                                navigateToPetPictures = true  // ✅ Set navigation state to true
                            }) {
                                Image(systemName: "list.bullet.rectangle")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .padding(10)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(Circle())
                            }
                            .frame(width: 50, height: 50)
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 30)
                }
            }
            .navigationBarHidden(true) // Hide default navigation bar
            .navigationDestination(isPresented: $navigateToPetPictures) {  // ✅ Navigate to PetPicturesScreen
                PetPicturesScreen()
            }
        }
    }
}
