//
//  NewsDetailView.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 17.05.2024.
//

import SwiftUI
import Kingfisher

struct NewsDetailView: View {
    var news: NewsViewModel
    @State private var isFavorite: Bool = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(news.title )
                    .font(.largeTitle)
                    .bold()
                
                KFImage(URL(string: news.urlToImage ))
                    .resizable()
                    .cornerRadius(10)
                    .frame(width: 360, height: 200)
                    .scaledToFit()
                    .aspectRatio(4/3, contentMode: .fit)

                Text(news.author )
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(news.description )
                    .font(.body)

                Spacer()
                
                Button(action: toggleFavorite) {
                    HStack {
                        Image(systemName: isFavorite ? "star.fill" : "star")
                        Text(isFavorite ? "Favorilerden Çıkar" : "Favorilere Ekle")
                    }
                    .foregroundColor(.blue)
                }
                .padding()
            }
            .padding()
        }
        .navigationTitle("Details of news")
        .navigationBarTitleDisplayMode(.inline)
    }
    
//    var isFavorite: Bool {
//        favorites.contains(where: { $0.id == news.id })
//    }
//
    private func toggleFavorite() {
            isFavorite.toggle()
        }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(news: NewsViewModel(news: NewsModel()))
    }
}
