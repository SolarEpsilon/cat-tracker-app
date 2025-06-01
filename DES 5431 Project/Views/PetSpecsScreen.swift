//
//  PetSpecsScreen.swift
//  DES 5431 Project
//
//  Created by Ronan M on 3/28/25.
//
import SwiftUI
import MapKit
import Charts

struct PetSpecsScreen: View {
    let stepData: [(day: String, steps: Int)] = [
        ("Mon", 4000), ("Tue", 5000), ("Wed", 3200), ("Thu", 6100)
    ]
    
    let activityData: [(activity: String, duration: Double)] = [
        ("Sunbathing", 2.5), ("Exploring", 4.0), ("Climbing", 1.5)
    ]
    
    let temperatureData: [(time: String, temp: Double)] = [
        ("8 AM", 101.0), ("10 AM", 101.2), ("12 PM", 101), ("2 PM", 101.5),
        ("4 PM", 103.0), ("6 PM", 101.1), ("8 PM", 101.2)
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Text("Pet Specs")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)

                // Steps Chart
                VStack(alignment: .leading) {
                    Text("Daily Steps (Last 4 Days)")
                        .font(.headline)
                    Chart {
                        ForEach(stepData, id: \.day) { entry in
                            BarMark(
                                x: .value("Day", entry.day),
                                y: .value("Steps", entry.steps)
                            )
                            .foregroundStyle(.green)
                        }
                    }
                    .frame(height: 200)
                }
                .padding()

                // Custom Activity Pie Chart
                VStack(alignment: .leading) {
                    Text("Activity Breakdown (Last 4 Days)")
                        .font(.headline)
                        .padding(.bottom)
                    
                    ZStack {
                        Circle()
                            .stroke(lineWidth: 20)
                            .foregroundColor(.gray.opacity(0.3))
                        
                        PieChartView(data: activityData)
                            .frame(width: 150, height: 150)
                    }
                    .frame(height: 200)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Text("Exploring")
                            .font(.headline)
                            .foregroundColor(.green)
                        
                        Spacer()
                        
                        Text("Sunbathing")
                            .font(.headline)
                            .foregroundColor(.orange)
                        
                        Spacer()
                        
                        Text("Climbing")
                            .font(.headline)
                            .foregroundColor(.purple)
                    }
                }
                .padding()

                // Temperature Chart with Alerts
                VStack(alignment: .leading) {
                    Text("Temperature Over Time (Today)")
                        .font(.headline)
                    
                    Chart {
                        ForEach(temperatureData, id: \.time) { entry in
                            LineMark(
                                x: .value("Time", entry.time),
                                y: .value("Temp", entry.temp)
                            )
                            .foregroundStyle(.green)
                            
                            // Alert icon for temperature out of range
                            if entry.temp > 102.5 || entry.temp < 100.5 {
                                PointMark(
                                    x: .value("Time", entry.time),
                                    y: .value("Temp", entry.temp)
                                )
                                .symbol {
                                    Image(systemName: "exclamationmark.triangle.fill")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                    }
                    .chartYScale(domain: 98.5...104.5)
                    .chartYAxis {
                        AxisMarks(position: .leading) { value in
                            AxisGridLine()
                            AxisTick()
                        }
                    }
                    .frame(height: 200)
                }
                .padding()
            }
        }
        .padding()
    }
}
