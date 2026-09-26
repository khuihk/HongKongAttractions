//
//  SplashView.swift
//  HongKongAttractions
//
//  Created by Kenneth HUI on 12/10/2025.
//


import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var fadeIn = false

    var body: some View {
        ZStack {
            Image("hongkongnight")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(fadeIn ? 1.0 : 0.0)
                .animation(.easeIn(duration: 0.6), value: fadeIn)
        }
        .onAppear {
            fadeIn = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation(.easeInOut) {
                    isActive = true
                }
            }
        }
        .fullScreenCover(isPresented: $isActive) {
            ContentView()
        }
    }
}
