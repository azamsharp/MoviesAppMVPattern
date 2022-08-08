//
//  Store.swift
//  MovieApp
//
//  Created by Mohammad Azam on 8/8/22.
//

import Foundation

@MainActor
class Store: ObservableObject {
    
    @Published var movies: [Movie] = []
    @Published var newsArticles: [NewsArticle] = []
    @Published var movieDetail: MovieDetail?
    
    func fetchMovies() async throws {
       movies = try await Webservice().loadMovies()
    }
    
    func fetchMovieById(_ movieId: String) async throws {
        movieDetail = try await Webservice().loadMovieBy(movieId)
    }
    
    func fetchArticlesByKeyword(_ keyword: String) async throws {
        newsArticles = try await Webservice().loadNewsArticleBy(keyword)
    }
}
