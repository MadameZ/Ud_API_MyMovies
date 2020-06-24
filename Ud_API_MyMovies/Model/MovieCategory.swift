//
//  MovieCategory.swift
//  Ud_API_MyMovies
//
//  Created by Caroline Zaini on 24/06/2020.
//  Copyright © 2020 Caroline Zaini. All rights reserved.
//

import Foundation

/// hérite de String pour avoir la rawValue de chacun de nos cas
/// CaseIterable : on va pouvoir itérer à travers tous les cas

enum MovieCategory: String, CaseIterable {
    case now_playing
    case upcoming
    case top_rated
    case popular
}
