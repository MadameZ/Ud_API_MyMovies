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
    // si on le crée avec des parenthèses on créé une autre instance de viewController alors qu'on veut celle qui est existante :
    var controller: ViewController!
    
    func setup(_ movies: [Movie], _ controller: ViewController) {
        self.controller = controller
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let movie = movies[indexPath.item]
        
        // on ne peut pas faire un perform segue directement car on l'a uniquement quand on utilise notre UIViewController. Donc on créé une variable pour référencer notre UIViewController :
        controller.performSegue(withIdentifier: "detail", sender: movie)
        
    }
    

    
}
