//
//  PieSlice.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI

struct PieSlice: View {
    let startAngle: Angle
    let endAngle: Angle
    let color: Color
    let center: CGPoint
    let radius: CGFloat

    var body: some View {
        Path { path in
            path.move(to: center)
            path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
            path.closeSubpath()
        }
        .fill(color)
    }
}
