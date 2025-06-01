//
//  PieChartView.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI

struct PieChartView: View {
    let data: [(activity: String, duration: Double)]
    let colors: [Color] = [.purple, .green, .orange]

    var total: Double {
        data.reduce(0) { $0 + $1.duration }
    }
    
    var body: some View {
        GeometryReader { geometry in
            let radius = min(geometry.size.width, geometry.size.height) / 2
            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)

            ZStack {
                ForEach(Array(data.enumerated()), id: \.1.activity) { index, entry in
                    let startAngle = angle(at: index)
                    let endAngle = angle(at: index + 1)
                    
                    PieSlice(startAngle: startAngle, endAngle: endAngle, color: colors[index % colors.count], center: center, radius: radius)
                }
            }
        }
    }

    private func angle(at index: Int) -> Angle {
        let sumBefore = data.prefix(index).reduce(0) { $0 + $1.duration }
        let percentage = sumBefore / total
        return Angle(degrees: percentage * 360 - 90)
    }
}
