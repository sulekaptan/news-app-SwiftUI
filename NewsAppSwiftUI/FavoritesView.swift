//
//  FavoritesView.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 14.05.2024.
//

import SwiftUI

struct FavoritesView: View {
    @State private var favorites: [NewsModel] = []
    
    var body: some View {
        Text("No favorites yet!")
    }
    
    struct FavoritesView_Previews: PreviewProvider {
        static var previews: some View {
            FavoritesView()
        }
    }
}
