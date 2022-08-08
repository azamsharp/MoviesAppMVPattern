//
//  MovieResponse.swift
//  MovieApp
//
//  Created by Mohammad Azam on 8/8/22.
//

import Foundation

struct MovieResponse: Decodable {
    let search: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
}
