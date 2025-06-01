//
//  ContentView.swift
//  DES 5431 Project
//
//  Created by Ronan Magnus on 2/19/25.
//

import SwiftUI
import MapKit
import Charts

//// MARK: MenuItem helper function
//struct MenuItem: View {
//    let imageName: String
//    let iconName: String
//    let title: String
//    
//    var body: some View {
////        NavigationLink(destination: Text("\(title) details coming soon")) {
//            VStack(alignment: .leading, spacing: 8) {
//                // Large Image at the top
//                Image(imageName)
//                    .resizable()
//                    .scaledToFit()
//                    .cornerRadius(12)
//                    .padding(.bottom, 8)
//                
//                // Row content
//                HStack {
//                    Image(systemName: iconName)
//                        .foregroundColor(.blue)
//                        .font(.title2)
//                    
//                    Text(title)
//                        .font(.headline)
//                        .foregroundColor(.primary)
//                    
//                    Spacer()
//                    
//                    Image(systemName: "chevron.right")
//                        .foregroundColor(.gray)
//                        .font(.title3)
//                }
//                .padding(.horizontal)
//            }
//            .padding(.vertical, 8)
//    }
//}

//// MARK: - Brand Colors
//extension Color {
//    static let brandGreen = Color(UIColor(red: 0x00 / 255.0, green: 0xC1 / 255.0, blue: 0x53 / 255.0, alpha: 1.0))
//}

//// MARK: - Cat Tracker Popup Screen
//struct CatTrackerScreen: View {
//    @Binding var isTrackingActive: Bool
//    @State private var catDistance = "8 ft away" // Example distance
//    @State private var arrowDirection: Double = 45 // Mock angle, change dynamically later
//
//    var body: some View {
//        ZStack {
//            // Apple-style light green background
//            Color.brandGreen.opacity(1.0)
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                // Back button
//                HStack {
//                    Button(action: {
//                        isTrackingActive = false
//                    }) {
//                        Image(systemName: "arrow.left")
//                            .font(.title)
//                            .foregroundColor(.black)
//                            .padding()
//                            .background(Circle().fill(Color.white).shadow(radius: 5))
//                    }
//                    .padding(.leading, 20)
//                    
//                    Spacer()
//                }
//                
//                Spacer()
//                
//                // Distance Indicator
//                Text(catDistance)
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                    .foregroundColor(.black)
//                    .padding()
//
//                // Direction Arrow (Mock Airtag-style)
//                Image(systemName: "location.north.fill") // Arrow shape
//                    .font(.system(size: 80))
//                    .foregroundColor(.black)
//                    .rotationEffect(.degrees(arrowDirection)) // Rotate dynamically
//                    .padding()
//                
//                Spacer()
//
//                // Large Cat Paw Icon (indicating tracking)
//                Image(systemName: "pawprint.fill")
//                    .font(.system(size: 100))
//                    .foregroundColor(.black)
//                    .padding()
//
//                Spacer()
//
//                // Bottom Buttons
//                HStack {
//                    // Catnip Button (bottom left)
//                    Button(action: {
//                        print("Catnip activated!")
//                    }) {
//                        Circle()
//                            .fill(Color.yellow.opacity(0.8))
//                            .frame(width: 80, height: 80)
//                            .overlay(
//                                Image(systemName: "leaf.fill")
//                                    .font(.title)
//                                    .foregroundColor(.white)
//                            )
//                    }
//                    .padding(.leading, 40)
//
//                    Spacer()
//
//                    // Volume Button (bottom right)
//                    Button(action: {
//                        print("Playing sound for cat!")
//                    }) {
//                        Circle()
//                            .fill(Color.blue.opacity(0.8))
//                            .frame(width: 80, height: 80)
//                            .overlay(
//                                Image(systemName: "speaker.wave.3.fill")
//                                    .font(.title)
//                                    .foregroundColor(.white)
//                            )
//                    }
//                    .padding(.trailing, 40)
//                }
//                .padding(.bottom, 40)
//            }
//        }
//        .navigationBarHidden(true) // Hide default navigation bar
//    }
//}


// MARK: - Main App View with Tab Bar
//struct MainView: View {
//    init() {
//        UITabBar.appearance().backgroundColor = UIColor.black
//        UITabBar.appearance().barTintColor = UIColor.black
//        
//        // Set appearance to dark mode
//        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = .dark
//    }
//    
//    var body: some View {
//        TabView {
//            MapScreen()
//                .tabItem {
//                    Label("Map", systemImage: "map")
//                }
//            CameraScreen()
//                .tabItem {
//                    Label("Camera", systemImage: "camera")
//                }
//            AIFeaturesScreen()
//                .tabItem {
//                    Label("AI Features", systemImage: "brain.head.profile")
//                }
//            PetDetailsScreen()
//                .tabItem {
//                    Label("Pet Details", systemImage: "pawprint")
//                }
//        }
//        .tint(Color.brandGreen)
//    }
//}

// MARK: Map Screen
//struct MapScreen: View {
//    @State private var isTrackingActive = false
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 44.9778, longitude: -93.2650), // Example: Minneapolis
//        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//    )
//
//    var body: some View {
//        ZStack {
//            // Map View
//            Map(coordinateRegion: $region)
//                .edgesIgnoringSafeArea(.all)
//            
//            // Running cat button in the top-right corner
//            VStack {
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        isTrackingActive = true
//                    }) {
//                        Image(systemName: "hare.fill") // Running animal icon
//                            .font(.title)
//                            .foregroundColor(.red)
//                            .padding()
//                            .background(Circle().fill(Color.white).shadow(radius: 5))
//                    }
//                    .padding()
//                }
//                Spacer()
//            }
//        }
//        .fullScreenCover(isPresented: $isTrackingActive) {
//            CatTrackerScreen(isTrackingActive: $isTrackingActive)
//        }
//        .navigationTitle("Map")
//    }
//}

// MARK: Camera Screen
//struct CameraScreen: View {
//    @State private var navigateToPetPictures = false  // Declare the state variable
//
//    var body: some View {
//        NavigationStack {  // Ensure NavigationStack wraps the content
//            ZStack {
//                // Camera Preview
//                Image("grass")
//                    .resizable()
//                    .scaledToFill()
//                    .edgesIgnoringSafeArea(.all)
//
//                VStack {
//                    // 🔹 Top Bar (Flash & Settings)
//                    HStack {
//                        Button(action: {
//                            // Flash toggle action
//                        }) {
//                            Image(systemName: "bolt.fill")
//                                .foregroundColor(.white)
//                                .font(.title2)
//                                .padding()
//                                .background(Color.black.opacity(0.4))
//                                .clipShape(Circle())
//                        }
//
//                        Spacer()
//
//                        Button(action: {
//                            // Settings action
//                        }) {
//                            Image(systemName: "gearshape.fill")
//                                .foregroundColor(.white)
//                                .font(.title2)
//                                .padding()
//                                .background(Color.black.opacity(0.4))
//                                .clipShape(Circle())
//                        }
//                    }
//                    .padding()
//
//                    Spacer()
//
//                    // Bottom Controls (Shutter, Gallery button)
//                    VStack(spacing: 8) {
//                        Text("This is what Spot is seeing right now!")
//                            .foregroundColor(.white)
//                            .font(.footnote)
//                            .padding(.bottom, 8)
//
//                        HStack {
//                            // Shutter Button
//                            Button(action: {
//                                // Capture action
//                            }) {
//                                Circle()
//                                    .strokeBorder(Color.white, lineWidth: 4)
//                                    .background(Circle().fill(Color.black.opacity(0.2)))
//                                    .frame(width: 75, height: 75)
//                            }
//
//                            // Open Gallery Button
//                            Button(action: {
//                                navigateToPetPictures = true  // ✅ Set navigation state to true
//                            }) {
//                                Image(systemName: "list.bullet.rectangle")
//                                    .foregroundColor(.white)
//                                    .font(.title)
//                                    .padding(10)
//                                    .background(Color.black.opacity(0.5))
//                                    .clipShape(Circle())
//                            }
//                            .frame(width: 50, height: 50)
//                        }
//                        .padding(.horizontal)
//                    }
//                    .padding(.bottom, 30)
//                }
//            }
//            .navigationBarHidden(true) // Hide default navigation bar
//            .navigationDestination(isPresented: $navigateToPetPictures) {  // ✅ Navigate to PetPicturesScreen
//                PetPicturesScreen()
//            }
//        }
//    }
//}

// MARK: AI Features Screen
//struct AIFeaturesScreen: View {
//    var body: some View {
//        NavigationView {
//            List {
//                            NavigationLink(destination: PetLogsScreen()) {
//                                MenuItem(imageName: "journal", iconName: "list.bullet.rectangle", title: "Pet Logs")
//                            }
//                            NavigationLink(destination: PhotoCapsScreen()) {
//                                MenuItem(imageName: "camera", iconName: "camera.viewfinder", title: "Photo Caps")
//                            }
//                            NavigationLink(destination: HeatmapScreen()) {
//                                MenuItem(imageName: "world-map-dark", iconName: "flame.fill", title: "Heat Map")
//                            }
//                        }
//                        .navigationTitle("AI Features")
//        }
//    }
//}

// MARK: Pet Details Screen
//struct PetDetailsScreen: View {
//    var body: some View {
//        NavigationView {
//            List {
//                NavigationLink(destination: PetSpecsScreen()) {
//                    MenuItem(imageName: "cat-bowl", iconName: "heart.text.square", title: "Daily Specs")
//                }
//                NavigationLink(destination: PetPicturesScreen()) {
//                    MenuItem(imageName: "photo-gallery", iconName: "photo.on.rectangle", title: "Gallery")
//                }
//                NavigationLink(destination: PetNametagScreen()) {
//                    MenuItem(imageName: "collar", iconName: "tag.fill", title: "Nametag")
//                }
//                NavigationLink(destination: SummaryScreen()) {
//                    MenuItem(imageName: "sleeping", iconName: "calendar.badge.clock", title: "Daily Summary")
//                }
//            }
//            .navigationTitle("Pet Details")
//        }
//    }
//}

// MARK: AI Pet Logs Screen
//struct PetLogsScreen: View {
//    @Environment(\.presentationMode) var presentationMode
//    @State private var playingAudioID: UUID? = nil // Track which entry is playing
//
//    // Sample data
//    let petLogs: [PetLogEntry] = [
//        PetLogEntry(id: UUID(), date: "Feb 20, 2025", title: "Raccoon Sighting", audioFile: "audio1", text: "It was 12:07, just after midnight. Spot rounded the corner to begin the walk home, when suddenly, she saw a giant raccoon! Feeling a spike of fear, she turned tail and ran. The raccoon hissed! Spot raced inside the cat door into the house, safe.", images: ["raccoon-4"]),
//        PetLogEntry(id: UUID(), date: "Feb 18, 2025", title: "Rainy Day", audioFile: "audio3", text: "All day, Spot tried to find something to do outside during the rain. Instead, the rain just kept raining! After a while, Spot decided to spend her time sleeping instead.", images: ["rain"])
//    ]
//    
//    var body: some View {
//        GeometryReader { geometry in
//            VStack {
//                // Header with back button
//                VStack {
//                    Text("AI Pet Logs")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                    Text("Started Aug 2022")
//                }
//                .padding(.horizontal)
//                
//                // Load each card (picture, text, title, audio wavelength)
//                List(petLogs) { log in
//                    PetLogEntryView(log: log, playingAudioID: $playingAudioID)
//                        .listRowInsets(EdgeInsets())
//                        // Remove automatic flash when clicked
//                        .listRowBackground(Color.clear)
//                }
//                .listStyle(PlainListStyle())
//            }
//            .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
//        }
//    }
//}

// MARK: AI Pet Log Entry View
//struct PetLogEntryView: View {
//    let log: PetLogEntry
//    @Binding var playingAudioID: UUID?
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 8) {
//            // Date with calendar icon
//            HStack {
//                Image(systemName: "calendar")
//                    .foregroundColor(.gray)
//                Text(log.date)
//                    .font(.subheadline)
//                    .foregroundColor(.gray)
//            }
//
//            // Title
//            Text(log.title)
//                .font(.headline)
//                .fontWeight(.bold)
//
//            
//            // Audio wave
//            HStack {
//                            AudioWaveformView()
//                                .frame(height: 30)
//                                .background(Color.gray.opacity(0.2))
//                                .cornerRadius(5)
//
//                            Spacer()
//
//                            Button(action: {
//                                if playingAudioID == log.id {
//                                    playingAudioID = nil // Stop playback
//                                } else {
//                                    playingAudioID = log.id // Start playback
//                                }
//                            }) {
//                                Image(systemName: playingAudioID == log.id ? "pause.fill" : "play.fill")
//                                    .foregroundColor(.brandGreen)
//                                    .padding()
//                            }
//                        }
//
//            // Image + Text Row
//            HStack {
//                ForEach(log.images, id: \.self) { imageName in
//                    Image(imageName)
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 160, height: 400)
//                        .clipShape(RoundedRectangle(cornerRadius: 8))
//                        .shadow(radius: 2)
//                        .clipped()
//                }
//
//                Text(log.text)
//                    .font(.body)
//                    .foregroundColor(.primary)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .padding(.leading, 10)
//
//                Spacer()
//            }
//        }
//        .padding()
//        .background(RoundedRectangle(cornerRadius: 12).fill(Color.black).shadow(radius: 2))
//        .padding(.horizontal)
//    }
//}

// MARK: Audio Waveform View
//struct AudioWaveformView: View {
//    @State private var amplitudes: [CGFloat] = Array(repeating: 0.5, count: 40)
//
//    var body: some View {
//        Canvas { context, size in
//            let barWidth = size.width / CGFloat(amplitudes.count)
//            for (index, amplitude) in amplitudes.enumerated() {
//                let barHeight = amplitude * size.height
//                let rect = CGRect(
//                    x: CGFloat(index) * barWidth,
//                    y: (size.height - barHeight) / 2,
//                    width: barWidth * 0.8,
//                    height: barHeight
//                )
//                context.fill(Path(roundedRect: rect, cornerRadius: 2), with: .color(.brandGreen))
//            }
//        }
//        .frame(height: 30)
//        .onAppear {
//            withAnimation(.linear(duration: 0.1).repeatForever(autoreverses: true)) {
//                amplitudes = amplitudes.map { _ in CGFloat.random(in: 0.3...1.0) }
//            }
//        }
//    }
//}

// MARK: AI Photo Captures Screen
//struct PhotoCapsScreen: View {
//    @Environment(\.presentationMode) var presentationMode
//    @State private var playingAudioID: UUID? = nil // Track which entry is playing
//
//    // Sample data
//    let petLogs: [PetLogEntry] = [
//        PetLogEntry(id: UUID(), date: "Feb 20, 2025", title: "Exciting Raccoon Sighting!", audioFile: "audio1", text: "", images: ["raccoon-3", "raccoon-1"]),
//        
//        PetLogEntry(id: UUID(), date: "Feb 19, 2025", title: "Baby Chipmunks", audioFile: "audio2", text: "", images: ["chipmunk-3", "chipmunk-2"]),
//    ]
//    
//    var body: some View {
//        VStack {
//            // Header
//            VStack {
//                Text("AI Photo Captures")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                Text("Started Aug 2022")
//            }
//            .padding(.horizontal)
//            
//            // Pet log entries list
//            ScrollView {
//                ForEach(petLogs) { log in
//                    VStack(alignment: .leading, spacing: 8) {
//                        // Date with calendar icon
//                        HStack {
//                            Image(systemName: "calendar")
//                                .foregroundColor(.brandGreen)
//                            Text(log.date)
//                                .font(.subheadline)
//                                .foregroundColor(.brandGreen)
//                        }
//                        
//                        // Title
//                        Text(log.title)
//                            .font(.headline)
//                            .fontWeight(.bold)
//
//                        // Image + Text Row
//                        VStack {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                VStack {
//                                    ForEach(log.images, id: \.self) { imageName in
//                                        Image(imageName)
//                                            .resizable()
//                                            .scaledToFill()
//                                            .frame(height: 200)
//                                            .clipShape(RoundedRectangle(cornerRadius: 8))
//                                            .shadow(radius: 2)
//                                    }
//                                }
//                            }
//
//                            Spacer()
//                        }
//                    }
//                    .padding()
//                    .background(RoundedRectangle(cornerRadius: 12).fill(Color.black).shadow(radius: 2))
//                    .padding(.horizontal)
//                }
//            }
//        }
//        .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
//    }
//}

// MARK: - Data Model (AI Pet Photo Captures Logs)
//struct PetLogEntry: Identifiable {
//    let id: UUID
//    let date: String
//    let title: String
//    let audioFile: String
//    let text: String
//    let images: [String]
//}

// MARK: AI Heat Map Screen
//struct HeatmapScreen: View {
//    @Environment(\.presentationMode) var presentationMode
//    
//    var body: some View {
//        VStack(spacing: 16) {
//            // Title & Subtitle
//            VStack(spacing: 4) {
//                Text("AI Heat Map")
//                    .font(.title)
//                    .fontWeight(.bold)
//                
//                Text("Spot’s route and favorite spots! August 2022 to January 2025")
//            }
//            .padding(.horizontal)
//
//            // Large Heatmap Image
//            Image("heatmap")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: .infinity, maxHeight: 500) // Adjust height as needed
//                .clipShape(RoundedRectangle(cornerRadius: 12))
//                .shadow(radius: 4)
//
//            Spacer()
//        }
//        .padding()
//        .background(Color.black.ignoresSafeArea())
//    }
//}

// MARK: Pet Specs Screen
//struct PetSpecsScreen: View {
//    let stepData: [(day: String, steps: Int)] = [
//        ("Mon", 4000), ("Tue", 5000), ("Wed", 3200), ("Thu", 6100)
//    ]
//    
//    let activityData: [(activity: String, duration: Double)] = [
//        ("Sunbathing", 2.5), ("Exploring", 4.0), ("Climbing", 1.5)
//    ]
//    
//    let temperatureData: [(time: String, temp: Double)] = [
//        ("8 AM", 101.0), ("10 AM", 101.2), ("12 PM", 101), ("2 PM", 101.5),
//        ("4 PM", 103.0), ("6 PM", 101.1), ("8 PM", 101.2)
//    ]
//    
//    var body: some View {
//        ScrollView {
//            VStack(spacing: 24) {
//                Text("Pet Specs")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding(.top)
//
//                // Steps Chart
//                VStack(alignment: .leading) {
//                    Text("Daily Steps (Last 4 Days)")
//                        .font(.headline)
//                    Chart {
//                        ForEach(stepData, id: \.day) { entry in
//                            BarMark(
//                                x: .value("Day", entry.day),
//                                y: .value("Steps", entry.steps)
//                            )
//                            .foregroundStyle(.green)
//                        }
//                    }
//                    .frame(height: 200)
//                }
//                .padding()
//
//                // Custom Activity Pie Chart
//                VStack(alignment: .leading) {
//                    Text("Activity Breakdown (Last 4 Days)")
//                        .font(.headline)
//                        .padding(.bottom)
//                    
//                    ZStack {
//                        Circle()
//                            .stroke(lineWidth: 20)
//                            .foregroundColor(.gray.opacity(0.3))
//                        
//                        PieChartView(data: activityData)
//                            .frame(width: 150, height: 150)
//                    }
//                    .frame(height: 200)
//                    .frame(maxWidth: .infinity, alignment: .center)
//                    
//                    Spacer()
//                    
//                    HStack {
//                        Spacer()
//                        
//                        Text("Exploring")
//                            .font(.headline)
//                            .foregroundColor(.green)
//                        
//                        Spacer()
//                        
//                        Text("Sunbathing")
//                            .font(.headline)
//                            .foregroundColor(.orange)
//                        
//                        Spacer()
//                        
//                        Text("Climbing")
//                            .font(.headline)
//                            .foregroundColor(.purple)
//                    }
//                }
//                .padding()
//
//                // Temperature Chart with Alerts
//                VStack(alignment: .leading) {
//                    Text("Temperature Over Time (Today)")
//                        .font(.headline)
//                    
//                    Chart {
//                        ForEach(temperatureData, id: \.time) { entry in
//                            LineMark(
//                                x: .value("Time", entry.time),
//                                y: .value("Temp", entry.temp)
//                            )
//                            .foregroundStyle(.green)
//                            
//                            // Alert icon for temperature out of range
//                            if entry.temp > 102.5 || entry.temp < 100.5 {
//                                PointMark(
//                                    x: .value("Time", entry.time),
//                                    y: .value("Temp", entry.temp)
//                                )
//                                .symbol {
//                                    Image(systemName: "exclamationmark.triangle.fill")
//                                        .foregroundColor(.red)
//                                }
//                            }
//                        }
//                    }
//                    .chartYScale(domain: 98.5...104.5)
//                    .chartYAxis {
//                        AxisMarks(position: .leading) { value in
//                            AxisGridLine()
//                            AxisTick()
//                        }
//                    }
//                    .frame(height: 200)
//                }
//                .padding()
//            }
//        }
//        .padding()
//    }
//}

// MARK: Custom Pie Chart Component
//struct PieChartView: View {
//    let data: [(activity: String, duration: Double)]
//    let colors: [Color] = [.purple, .green, .orange]
//
//    var total: Double {
//        data.reduce(0) { $0 + $1.duration }
//    }
//    
//    var body: some View {
//        GeometryReader { geometry in
//            let radius = min(geometry.size.width, geometry.size.height) / 2
//            let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
//
//            ZStack {
//                ForEach(Array(data.enumerated()), id: \.1.activity) { index, entry in
//                    let startAngle = angle(at: index)
//                    let endAngle = angle(at: index + 1)
//                    
//                    PieSlice(startAngle: startAngle, endAngle: endAngle, color: colors[index % colors.count], center: center, radius: radius)
//                }
//            }
//        }
//    }
//
//    private func angle(at index: Int) -> Angle {
//        let sumBefore = data.prefix(index).reduce(0) { $0 + $1.duration }
//        let percentage = sumBefore / total
//        return Angle(degrees: percentage * 360 - 90)
//    }
//}

// MARK: Custom Pie Slice
//struct PieSlice: View {
//    let startAngle: Angle
//    let endAngle: Angle
//    let color: Color
//    let center: CGPoint
//    let radius: CGFloat
//
//    var body: some View {
//        Path { path in
//            path.move(to: center)
//            path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
//            path.closeSubpath()
//        }
//        .fill(color)
//    }
//}

// MARK: Pet Pictures Screen
//struct PetPicturesScreen: View {
//    @Environment(\.presentationMode) var presentationMode
//    @State private var playingAudioID: UUID? = nil // Track which entry is playing
//
//    // Sample data
//    let petLogs: [PetLogEntry] = [
//        PetLogEntry(id: UUID(), date: "Feb 20, 2025", title: "The Daily Watch 📬🐱", audioFile: "audio1", text: "The mail carrier approaches, and Spot’s gaze sharpens. Friend or foe? A flick of the tail, a moment of contemplation… then back to business. The routine of the world unfolds, one delivery at a time.", images: ["garden-1"]),
//        
//        PetLogEntry(id: UUID(), date: "Feb 19, 2025", title: "Climbing High 🏡🧗‍♂️", audioFile: "audio2", text: "A wooden ladder leading to the ultimate outdoor perch—Spot’s personal throne. A few careful steps, a graceful leap, and the world below looks just a little smaller. Time for a well-earned stretch in the sun.", images: ["garden-3", "garden-4"]),
//        
//        PetLogEntry(id: UUID(), date: "Mar 14, 2025", title: "Blossoms & Whiskers 🌸🐾", audioFile: "audio2", text: "Spot pauses to admire a cluster of bright flowers swaying gently in the breeze. Their petals catch the sunlight, creating a soft, dreamy glow. A curious sniff, a twitch of the ears—nature is full of tiny wonders.", images: ["garden-5"]),
//    ]
//    
//    var body: some View {
//        VStack {
//            // Header
//            VStack {
//                Text("Spot's Pictures")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                Text("Started Aug 2022")
//            }
//            .padding(.horizontal)
//            
//            // Pet log entries list
//            ScrollView {
//                ForEach(petLogs) { log in
//                    VStack(alignment: .leading, spacing: 8) {
//                        // Date with calendar icon
//                        HStack {
//                            Image(systemName: "calendar")
//                                .foregroundColor(.gray)
//                            Text(log.date)
//                                .font(.subheadline)
//                                .foregroundColor(.gray)
//                        }
//
//                        // Image + Text Row
//                        VStack {
//                            ScrollView(.horizontal, showsIndicators: false) {
//                                VStack {
//                                    ForEach(log.images, id: \.self) { imageName in
//                                        Image(imageName)
//                                            .resizable()
//                                            .scaledToFill()
//                                            .frame(width: 400, height: 200)
//                                            .clipShape(RoundedRectangle(cornerRadius: 8))
//                                            .shadow(radius: 2)
//                                    }
//                                }
//                            }
//
//                            Spacer()
//                        }
//                        
//                        // Title
//                        Text(log.title)
//                            .font(.headline)
//                            .fontWeight(.bold)
//                        
//                        // Text
//                        Text(log.text)
//
//                    }
//                    .padding()
//                    .background(RoundedRectangle(cornerRadius: 12).fill(Color.black).shadow(radius: 2))
//                    .padding(.horizontal)
//                }
//            }
//        }
//        .background(Color(UIColor.systemGroupedBackground).edgesIgnoringSafeArea(.all))
//    }
//}

// MARK: Pet Nametag Screen
//struct PetNametagScreen: View {
//    
//    var body: some View {
//        ScrollView {
//            VStack(spacing: 16) { // Reduced spacing between title and subtitle
//                Text("Spot's Nametag")
//                    .font(.largeTitle)
//                    .bold()
//                
//                Text("612-123-4567")
//                    .font(.title)
//                
//                // Pet Image
//                Image("cat-2")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 300, height: 200) // Adjusted for better centering
//                    .clipShape(RoundedRectangle(cornerRadius: 16)) // More rounded edges
//                    .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.black, lineWidth: 4)) // Black border
//                    .shadow(radius: 4)
//                    .padding(.vertical, 16) // Added padding to keep it centered
//
//                // Pet Details
//                VStack(alignment: .leading, spacing: 12) { // Added spacing between text
//                    Text("🐈 Breed: Tabby")
//                    
//                    Divider()
//                    
//                    Text("🎂 Age: 3 years")
//                    
//                    Divider()
//                    
//                    Text("📱 Number: 612-123-4567")
//                    
//                    Divider()
//                    
//                    Text("👤 Owner: Jane Doe")
//                }
//                .font(.title2) // Made the font slightly smaller for better readability
//                .padding(.horizontal, 24) // Added left and right padding
//            }
//        }
//        .padding(.horizontal)
//    }
//}

// MARK: Summary Screen
//struct SummaryScreen: View {
//    
//    var body: some View {
//        ScrollView {
//            VStack(spacing: 16) {
//                Text("Daily Summary")
//                    .font(.largeTitle)
//                    .bold()
//                
//                Text("Today (Mar 17, 2025)")
//                    .font(.title)
//                
//                // Pet Image
//                Image("cat-watercolor")
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 300, height: 200) // Adjusted for better centering
//                    .clipShape(RoundedRectangle(cornerRadius: 16)) // More rounded edges
//                
//
//                VStack(alignment: .leading, spacing: 12) { // Added spacing between text
//                    Text("Mood")
//                        .bold()
//                        .foregroundColor(Color.brandGreen)
//                    Text("Happy: 4h")
//                    Text("Bored: 2h")
//                    
//                    Divider()
//                    
//                    Text("Activity")
//                        .bold()
//                        .foregroundColor(Color.brandGreen)
//                    Text("Playing: 4h")
//                    Text("Sleeping: 9h")
//                    
//                    Divider()
//                    
//                    Text("Suggestion")
//                        .bold()
//                        .foregroundColor(brandGreen)
//                    Text("Spot should drink more...")
//                    
//                }
//                .font(.title2)
//                // Left and right padding
//                .padding(.horizontal, 24)
//            }
//        }
//        .padding(.horizontal)
//    }
//}
