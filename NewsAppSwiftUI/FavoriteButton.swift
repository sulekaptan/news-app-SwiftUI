//
//  FavoriteButton.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 14.05.2024.
//

import SwiftUI

struct FavoriteButton: View {
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "star.fill")
                .padding(.top, 5)
                .foregroundColor(.yellow)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton()
    }
}
