//
//  ShowModel.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 06/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import Foundation

struct Show: Codable {
    var id, imdbID, tvdbID, title: String?
    var year, slug: String?
    var numSeasons: Int?
    var images: Images?
    var rating: Rating?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case imdbID = "imdb_id"
        case tvdbID = "tvdb_id"
        case title, year, slug
        case numSeasons = "num_seasons"
        case images, rating
    }
}
