//
//  ViewController.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

// MARK: - Comment to Storyboard

// Dans le storyboard on met d'abord la tableView,
// puis table View cell à l'intérieur.
// Dans la tableViewCell on met une collection view.
// Dans la cell de la collectionView on met une imageView.
// On rajoute un Visual Effects Views Blur and Vibrancy dans l'imageView.
// On met des contraintes pour chaque étape





import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var moviesByCategory: [MovieByCategory] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        MovieCategory.allCases.forEach { (cat) in
            let new = MovieByCategory(cat: cat)
            self.moviesByCategory.append(new)
        }

        moviesByCategory.forEach { (mbc) in
            MovieParser().get(mbc.cat) { (movies) in
                
//                for m in movies {
//                    print(m.title)
//                }
                
                mbc.movies = movies
//                print(mbc.movies.count)
                self.tableView.reloadData()
              
            }
        }
 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail", let detail = segue.destination as? DetailViewController {
            detail.movie = sender as? Movie
        }
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return moviesByCategory.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movies = moviesByCategory[indexPath.section].movies
        if let cell = tableView.dequeueReusableCell(withIdentifier: "category") as? CategoryTVCell {
            cell.setup(movies, self)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 275
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return moviesByCategory[section].name
    }
    
    
    
    
}



