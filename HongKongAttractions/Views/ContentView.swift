//
//  ContentView.swift
//  HongKongAttractions
//
//  Created by Kenneth HUI on 12/10/2025.
//


import SwiftUI

struct ContentView: View {
    @State private var selectedAttraction: Attraction?

    var body: some View {
        NavigationView {
            List {
                ForEach(attractions) { attraction in
                    HStack(spacing: 12) {
                        VStack(alignment: .leading, spacing: 6) {
                            Text(attraction.name)
                                .font(.headline)
                            Text(attraction.shortDescription)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                                .lineLimit(2)
                        }
                        Spacer()
                        Image(attraction.imageName)
                            .resizable()
                            .aspectRatio(4/3, contentMode: .fill)
                            .frame(width: 110, height: 82)
                            .clipped()
                            .cornerRadius(8)
                            .shadow(radius: 2)
                            .onTapGesture {
                                selectedAttraction = attraction
                            }
                            .accessibilityLabel(Text("Photo of \(attraction.name)"))
                    }
                    .padding(.vertical, 6)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Hong Kong Attractions")
            .sheet(item: $selectedAttraction) { attraction in
                DetailView(attraction: attraction)
                    .presentationDetents([.medium, .large])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}
