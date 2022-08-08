//
//  NewsArticleResponse.swift
//  MovieApp
//
//  Created by Mohammad Azam on 8/8/22.
//

import Foundation

struct NewsArticleResponse: Decodable {
    let articles: [NewsArticle]
}
