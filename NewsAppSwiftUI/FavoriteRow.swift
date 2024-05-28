//
//  FavoriteRow.swift
//  NewsAppSwiftUI
//
//  Created by Şule Kaptan on 16.05.2024.
//

import SwiftUI

struct FavoriteRow: View {
    var news: NewsModel
    
    var body: some View {
        HStack (spacing: 20) {
            Image("haber")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Fenerbahçe GS'yi Mağlup Etti! 1-0 !!!")
                    .bold()
                    .lineLimit(2)
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .onTapGesture {
                        
                    }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FavoriteRow_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteRow(news: NewsModel())
    }
}
