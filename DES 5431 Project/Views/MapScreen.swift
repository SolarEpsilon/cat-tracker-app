//
//  MapScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//

import SwiftUI
import MapKit

struct MapScreen: View {
    @State private var isTrackingActive = false
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 44.9778, longitude: -93.2650), // Example: Minneapolis
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        ZStack {
            // Map View
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
            
            // Track cat button in the top-right corner
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        isTrackingActive = true
                    }) {
                        VStack {
                        Text("🐈")
                            .font(.largeTitle)
                            .padding()
                            .background(Circle().fill(Color.white).shadow(radius: 5))
                                                    
                        Text("Track")
                            .font(.caption)
                            .foregroundColor(.white)
                        }
                    }
                    .padding()
                }
                Spacer()
            }
        }
        .fullScreenCover(isPresented: $isTrackingActive) {
            CatTrackerScreen(isTrackingActive: $isTrackingActive)
        }
        .navigationTitle("Map")
    }
}
