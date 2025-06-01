//
//  MainView.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//

import SwiftUI

struct MainView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().barTintColor = UIColor.black
        
        // Set appearance to dark mode
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .dark
    }
    
    var body: some View {
        TabView {
            MapScreen()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            CameraScreen()
                .tabItem {
                    Label("Camera", systemImage: "camera")
                }
            AIFeaturesMenu()
                .tabItem {
                    Label("AI Features", systemImage: "brain.head.profile")
                }
            PetDetailsMenu()
                .tabItem {
                    Label("Pet Details", systemImage: "pawprint")
                }
        }
        .tint(Color.brandGreen)
    }
}
