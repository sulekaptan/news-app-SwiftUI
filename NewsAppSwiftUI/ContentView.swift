//
//  ContentView.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 10.05.2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var newsListViewModel = NewsListViewModel()
    
    init() {
        newsListViewModel.load()
    }
    
    var body: some View {
            NavigationView {
                    ScrollView {
                        VStack(spacing: 3) {
                            ForEach(newsListViewModel.newsList) { newsViewModel in
                                NewsCard(news: newsViewModel)
                            }
                        }
                        .padding()
                    }
                    .navigationTitle("BREAKING NEWS")
                    .toolbar {
                        NavigationLink {
                            FavoritesView()
                        } label: {
                            FavoriteButton()
                        }
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
