//
//  DetailView.swift
//  HongKongAttractions
//
//  Created by Kenneth HUI on 12/10/2025.
//


import SwiftUI

struct DetailView: View {
    let attraction: Attraction

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(attraction.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(12)

                Text(attraction.name)
                    .font(.largeTitle)
                    .bold()

                Text(attraction.longDescription)
                    .font(.body)
                    .foregroundColor(.primary)

                Spacer(minLength: 0)
            }
            .padding()
        }
        .presentationBackgroundInteraction(.automatic)
        .accessibilityElement(children: .combine)
    }
}
