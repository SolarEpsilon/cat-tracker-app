//
//  AudioWaveformView.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI

struct AudioWaveformView: View {
    @State private var amplitudes: [CGFloat] = Array(repeating: 0.5, count: 40)

    var body: some View {
        Canvas { context, size in
            let barWidth = size.width / CGFloat(amplitudes.count)
            for (index, amplitude) in amplitudes.enumerated() {
                let barHeight = amplitude * size.height
                let rect = CGRect(
                    x: CGFloat(index) * barWidth,
                    y: (size.height - barHeight) / 2,
                    width: barWidth * 0.8,
                    height: barHeight
                )
                context.fill(Path(roundedRect: rect, cornerRadius: 2), with: .color(.brandGreen))
            }
        }
        .frame(height: 30)
        .onAppear {
            withAnimation(.linear(duration: 0.1).repeatForever(autoreverses: true)) {
                amplitudes = amplitudes.map { _ in CGFloat.random(in: 0.3...1.0) }
            }
        }
    }
}
