//
//  NetworkManager.swift
//  NewsAppSwiftUI
// 
//  Created by Şule Kaptan on 24.05.2024.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://newsapi.org/v2/"
    private let headline = "top-headlines?country=us"
    
    func getNews(completion: @escaping (Result<[NewsModel]?,NewsError>) -> Void ) {
        let urlString = "\(baseURL)\(headline)&apiKey=\(API.key)"
    
        guard let url = URL(string: urlString) else {
            completion(.failure(.badUrl))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data else {
                return completion(.failure(.noData))
            }
            
            let newsResponse = try? JSONDecoder().decode(ArticlesResponse.self, from: data)
            newsResponse == nil ? completion(.failure(.dataParseError)) : completion(.success(newsResponse!.articles))
//            guard let newsResponse = try? JSONDecoder().decode([ArticlesResponse].self, from: data) else {
//                return completion(.failure(.dataParseError))
//            }
//
//            completion(.success(newsResponse))
        }.resume()
    }
    
    func getImages(urlString: String, completion: @escaping (Data?) -> ()) {
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil, let data = data else {
                return completion(nil)
            }
            completion(data)
        }.resume()
    }
}

enum NewsError : Error {
    case badUrl
    case noData
    case dataParseError
}
