//
//  MovieModel.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 06/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import Foundation
struct Movie: Codable {
    var id, imdbID, title, year: String?
    var synopsis, runtime: String?
    var released: Int?
    var trailer: String?
    var certification: String?
    var torrents: Torrents?
    var genres: [String]?
    var images: Images?
    var rating: Rating?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case imdbID = "imdb_id"
        case title, year, synopsis, runtime, released, trailer, certification, torrents, genres, images, rating
    }
}

// MARK: - Images
struct Images: Codable {
    var poster, fanart, banner: String?
}

// MARK: - Rating
struct Rating: Codable {
    var percentage, watching, votes, loved: Int?
    var hated: Int?
}

// MARK: - Torrents
struct Torrents: Codable {
    var en: [String: En]?
}

// MARK: - En
struct En: Codable {
    var provider, filesize: String?
    var size, peer, seed: Int?
    var url: String?
}
