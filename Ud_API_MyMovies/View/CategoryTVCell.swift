//
//  CategoryTVCell.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

import UIKit

class CategoryTVCell: UITableViewCell {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var movies: [Movie] = []
    
    func setup(_ movies: [Movie]) {
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.movies = movies
        
        self.collectionView.reloadData()
        self.collectionView.collectionViewLayout = setLayout()
    }
    
    func setLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 185, height: 250)
        layout.minimumLineSpacing = 30
        layout.scrollDirection = .horizontal
        return layout
    }
    

}

extension CategoryTVCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCVCell
            
        cell.setup(movies[indexPath.item])
        return cell
    }
    

    
}
