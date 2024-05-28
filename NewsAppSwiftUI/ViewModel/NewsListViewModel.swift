//
//  NewsListViewModel.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 26.05.2024.
//

import Foundation

class NewsListViewModel: ObservableObject {
    @Published var newsList = [NewsViewModel]()
    @Published var imageData = [String: Data]()
    
    let networkManager = NetworkManager()
    
    func load() {
        getNews()
    }
    
    func getNews(){
        networkManager.getNews { result in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let news):
                if let news = news {
                    self.getImages(for: news)
                    DispatchQueue.main.async {
                        self.newsList = news.map(NewsViewModel.init)
                    }
                }
            }
        }
    }

    private func getImages(for news: [NewsModel]) {
        news.forEach { newsItem in
            guard let urlToImage = newsItem.urlToImage, !urlToImage.isEmpty else { return }
            
            networkManager.getImages(urlString: urlToImage) { data in
                guard let data = data else { return }
                
                DispatchQueue.main.async {
                    self.imageData[urlToImage] = data
                }
            }
        }
    }
}
