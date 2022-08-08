//
//  NewsArticle.swift
//  MovieApp
//
//  Created by Mohammad Azam on 8/8/22.
//

import Foundation

struct NewsArticle: Decodable, Identifiable {
    let title: String
    let description: String
    let id = UUID()
    
    private enum CodingKeys: String, CodingKey {
        case title = "title"
        case description = "description"
    }
}
