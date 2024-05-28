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
        Text("hello")
//        NavigationView {
//            VStack(spacing: 5) {
//                if favorites.isEmpty {
//                    Text("No favorites yet!")
//                        .font(.headline)
//                        .foregroundColor(.black)
//                        .padding()
//                } else {
//                    ScrollView {
//                        ForEach(favorites) { news in
//                            FavoriteRow(news: news)
//                                .contextMenu {
//                                    Button(action: {
//                                        removeNews(news)
//                                    }) {
//                                        Text("Remove from favorites")
//                                        Image(systemName: "trash")
//                                    }
//                                }
//                        }
//                    }
//                }
//            }
//            .navigationBarTitle("Favorites")
//        }
    }
    
//    private func removeNews(_ news: NewsModel) {
//        if let index = favorites.firstIndex(where: { $0.id == news.id }) {
//            favorites.remove(at: index)
//        }
//    }
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}


//import SwiftUI
//
//struct FavoritesView: View {
//
//    var favorites: [NewsModel] = [
//           NewsModel(title: "News 1", description: "Description 1"),
//           NewsModel(title: "News 2", description: "Description 2"),
//           NewsModel(title: "News 3", description: "Description 3"),
//           // Daha fazla örnek haber ekleyin
//       ]
//
//    var body: some View {
//        VStack(spacing: 5) {
//                    ScrollView {
//                        ForEach(favorites) { news in
//                            FavoriteRow(news: news)
//                        }
//                    }
//                }
//    }
//}
//
//struct FavoritesView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoritesView()
//    }
//}
