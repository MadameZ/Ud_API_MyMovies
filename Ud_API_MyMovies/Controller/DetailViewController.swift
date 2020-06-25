//
//  DetailViewController.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 25/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var overviewLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var originalLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var poster: UIImageView!
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var holder: UIView!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let m = movie else { return }
        titleLbl.text = m.title
        overviewLbl.text = m.overview
        poster.load(185, m.poster_path)
        dateLbl.text = "Sorti le : " + m.release_date
        originalLbl.text = "Titre original: \n" + m.original_title
        ratingLbl.text = "Note du public: \(m.vote_average)"
        bg.load(780, m.poster_path)
        holder.layer.cornerRadius = 10

    }
    

  

}
