//
//  MovieParser.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

import Foundation

class MovieParser {
    
    private let _key = "?api_key=6caeeadb4c3fcf9599319f151f91e8aa"
    private let _baseURL = "https://api.themoviedb.org/3/movie/"
    private let _lang = "&language=fr"
    
    var completion: (([Movie]) -> Void)?
    
    /// obtenir une URL
    func get(_ cat: MovieCategory, completion: (([Movie]) -> Void)?) {
        
        self.completion = completion
        
        let urlString = _baseURL + cat.rawValue + _key + _lang
        guard let url = URL(string: urlString) else { completion?([]); return }
        
//        print(url)
        sessionRequest(url: url)
        
    }
    
    
    
    
    func sessionRequest(url: URL) {
        URLSession.shared.dataTask(with: url, completionHandler: sessionResponse).resume()
    }
    
    
    
    func sessionResponse(_ data: Data?, _ response: URLResponse?, _ error: Error?) {
        
        DispatchQueue.main.async {
            if let d = data {
                do {
                    let r = try JSONDecoder().decode(MovieResponse.self, from: d)
                    self.completion?(r.results)
                } catch {
                    print(error.localizedDescription)
                    self.completion?([])
                }
                
            }
            
            if let err = error {
                print(err.localizedDescription)
                self.completion?([])
            }
        }
        
    }
    
}
