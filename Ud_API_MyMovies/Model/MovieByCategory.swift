//
//  MovieByCategory.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

import Foundation

class MovieByCategory {
    
    var name: String
    var cat: MovieCategory
    var movies: [Movie]
    
    init(cat: MovieCategory) {
        self.cat = cat
        self.movies = []
        
            switch self.cat {
            case .now_playing: self.name = "A l'affiche"
            case .upcoming: self.name = "A venir"
            case .top_rated: self.name = "Mieux noté"
            case .popular: self.name = "Populaire"
            
            
        }
        
    }
    
}
