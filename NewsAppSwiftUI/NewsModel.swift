//
//  News.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 14.05.2024.
//

import Foundation

struct NewsModel: Decodable {
//    var id = UUID()
    var source: ArticleSource?
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
//    var publishedAt: String?
//    var content: String?
}

struct ArticleSource: Decodable {
    var id: String?
    var name: String?
}

struct ArticlesResponse: Decodable {
    var status: String
    var totalResults: Int
    var articles: [NewsModel]
}

