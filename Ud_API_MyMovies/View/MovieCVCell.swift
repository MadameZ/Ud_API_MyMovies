//
//  MovieCell.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

import UIKit

class MovieCVCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var poster: UIImageView!
    
    var movie: Movie!
    
    func setup(_ movie: Movie) {
        self.movie = movie
        contentView.layer.cornerRadius = 10
        titleLbl.text = self.movie.title
        /// la func load est dans extensionUIImageView
        poster.load(185, self.movie.poster_path)
    }
    
    
}
