//
//  MenuItem.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/26/25.
//

import Foundation
import SwiftUI

// MARK: MenuItem helper function
struct MenuItem: View {
    let imageName: String
    let iconName: String
    let title: String
    
    var body: some View {
            VStack(alignment: .leading, spacing: 8) {
                // Large Image at the top
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .padding(.bottom, 8)
                
                // Row content
                HStack {
                    Image(systemName: iconName)
                        .foregroundColor(Color.brandGreen)
                        .font(.title2)
                    
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                        .font(.title3)
                }
                .padding(.horizontal)
            }
            .padding(.vertical, 8)
    }
}
