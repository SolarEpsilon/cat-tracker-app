//
//  AIFeaturesMenu.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//
import SwiftUI

struct AIFeaturesMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AIPetLogsScreen()) {
                    MenuItem(imageName: "journal", iconName: "list.bullet.rectangle", title: "Pet Logs")
                }
                NavigationLink(destination: PhotoCapsScreen()) {
                    MenuItem(imageName: "camera", iconName: "camera.viewfinder", title: "Photo Caps")
                }
                NavigationLink(destination: AIHeatmapScreen()) {
                    MenuItem(imageName: "world-map-dark", iconName: "flame.fill", title: "Heat Map")
                }
            }
            .navigationTitle("AI Features")
        }
    }
}
