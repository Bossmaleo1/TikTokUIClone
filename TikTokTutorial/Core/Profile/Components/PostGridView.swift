//
//  PostGridView.swift
//  TikTokTutorial
//
//  Created by Sidney MALEO on 13/05/2024.
//

import SwiftUI

struct PostGridView: View {
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    private let width = (UIScreen.main.bounds.width / 4) - 3
    
    var body: some View {
        LazyVGrid(columns: items) {
            ForEach(0..<25) { post in
                Rectangle()
                    .frame(width: width, height: 100)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
