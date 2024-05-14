//
//  News.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 14.05.2024.
//

import Foundation

struct NewsModel: Codable, Identifiable {
    var id = UUID()
    var source: ArticleSource?
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String?
}

struct ArticleSource: Codable {
    var id: String?
    var name: String?
}

struct ArticlesResponse: Codable {
    var status: String?
    var totalResults: Int?
    var articles: [NewsModel]?
}
