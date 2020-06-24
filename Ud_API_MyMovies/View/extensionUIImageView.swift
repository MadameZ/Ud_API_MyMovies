//
//  extensionUIImageView.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//



import UIKit

// MARK: - to load the image

// Pour récupérer l'image on fait une recherche dans notre navigateur -> tmdb poster -> base Url for getting Poster...

// info.plist : rajoute App Transport Security Settings -> + -> Allow Arbitrary Loads -> YES

extension UIImageView {
    
    func load(_ size: Int, _ path: String) {
        let urlString = "http://image.tmdb.org/t/p/" + "w\(size)//" + path
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (d, _, _) in
            DispatchQueue.main.async {
                if let data = d {
                    self.image = UIImage(data: data)
                }
            }
            
        }.resume()  
    }

}


