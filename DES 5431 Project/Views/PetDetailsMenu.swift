//
//  PetDetailsMenu.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//
import SwiftUI

struct PetDetailsMenu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: PetSpecsScreen()) {
                    MenuItem(imageName: "cat-bowl", iconName: "heart.text.square", title: "Daily Specs")
                }
                NavigationLink(destination: PetPicturesScreen()) {
                    MenuItem(imageName: "photo-gallery", iconName: "photo.on.rectangle", title: "Gallery")
                }
                NavigationLink(destination: PetNametagScreen()) {
                    MenuItem(imageName: "collar", iconName: "tag.fill", title: "Nametag")
                }
                NavigationLink(destination: SummaryScreen()) {
                    MenuItem(imageName: "sleeping", iconName: "calendar.badge.clock", title: "Daily Summary")
                }
            }
            .navigationTitle("Pet Details")
        }
    }
}
