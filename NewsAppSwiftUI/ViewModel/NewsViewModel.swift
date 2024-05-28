//
//  NewsViewModel.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 24.05.2024.
//


import Foundation

class NewsViewModel: ObservableObject, Identifiable {
    let id = UUID()
    let news: NewsModel
    
    init(news: NewsModel) {
        self.news = news
    }

    var author: String {
        news.author ?? "Unknown Author"
    }

    var title: String {
        news.title ?? "No Title"
    }

    var description: String {
        news.description ?? "No Description"
    }

    var url: String {
        news.url ?? ""
    }

    var urlToImage: String {
        news.urlToImage ?? "https://www.kindpng.com/picc/m/182-1827064_breaking-news-banner-png-transparent-background-breaking-news.png"
    }
}
