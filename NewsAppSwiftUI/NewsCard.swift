//
//  NewsCard.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 14.05.2024.
//


import SwiftUI
import Kingfisher

struct NewsCard: View {
    var news: NewsViewModel
    
    @State private var isNavigationActive: Bool = false
    
    init(news: NewsViewModel) {
        self.news = news
        // Resmin URL'sini kontrol etmek için print
        print("URL: \(news.urlToImage)")
    }
    
    var body: some View {
        ZStack {
            HStack(spacing: 2) {
                if let url = URL(string: news.urlToImage) {
                    KFImage(url)
                        .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 120, height: 120)
                            .cornerRadius(20)
                } else {
                    Image(systemName: "photo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .cornerRadius(20)
                }

                
                VStack(alignment: .leading, spacing: 5) {
                    Text(news.news.title ?? "No Title")
                        .bold()
                        .lineLimit(2)
                    Text(news.news.description ?? "No Description")
                        .font(.caption)
                        .lineLimit(3)
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(Color.white)
                .cornerRadius(10)
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 4)
            .onTapGesture {
                isNavigationActive = true
            }
            .background(NavigationLink(destination: isNavigationActive ? NewsDetailView(news: news) : nil, isActive: $isNavigationActive) {
                EmptyView()
            })
        }
        .padding()
    }
}

struct NewsCard_Previews: PreviewProvider {
    static var previews: some View {
        NewsCard(news: NewsViewModel(news: NewsModel()))
    }
}
