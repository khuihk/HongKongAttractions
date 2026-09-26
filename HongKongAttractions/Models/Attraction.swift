//
//  Attraction.swift
//  HongKongAttractions
//
//  Created by Kenneth HUI on 12/10/2025.
//


import Foundation

struct Attraction: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let shortDescription: String
    let longDescription: String
    let imageName: String
}

let attractions: [Attraction] = [
    Attraction(
        name: "Victoria Peak",
        shortDescription: "Panoramic views of the skyline and harbour.",
        longDescription: "Victoria Peak is the highest point on Hong Kong Island. Take the Peak Tram and enjoy sweeping views of the city, Victoria Harbour, and surrounding islands.",
        imageName: "peak"
    ),
    Attraction(
        name: "Star Ferry",
        shortDescription: "Iconic ride across Victoria Harbour.",
        longDescription: "Operating since 1888, the Star Ferry offers a scenic, affordable crossing between Central and Tsim Sha Tsui. Go at dusk for the skyline lights.",
        imageName: "starferry"
    ),
    Attraction(
        name: "Temple Street Night Market",
        shortDescription: "Bustling night market with food and stalls.",
        longDescription: "Temple Street is famous for street food, fortune tellers, and bargain hunting. Best visited in the evening when the market comes alive.",
        imageName: "temple"
    )
]
