//
//  PetLogEntry.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
import SwiftUI
//

struct PetLogEntry: Identifiable {
    let id: UUID
    let date: String
    let title: String
    let audioFile: String
    let text: String
    let images: [String]
}
