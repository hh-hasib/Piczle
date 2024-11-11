//
//  PuzzleTitleView.swift
//  Piczle
//
//  Created by Hasibul Hasan on 11/11/24.
//


import SwiftUI

struct PuzzleTileView: View {
    let tile: PuzzleTile
    var body: some View {
        VStack {
            if let image = tile.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
            }
            else {
                Color.yellow
            }
        }
        .overlay(content: {
            RoundedRectangle(cornerRadius: 5)
                .stroke(Color.yellow, lineWidth: 2)
        })
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    PuzzleTileView(tile: PuzzleTile(image: nil, isSpareTile: true))
}
