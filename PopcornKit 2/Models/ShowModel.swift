//
//  ShowModel.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 06/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import Foundation

// MARK:- Show
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


// MARK: - ShowDetail
struct ShowDetail: Codable {
    var id, imdbID, tvdbID, title: String?
    var year, slug, synopsis, runtime: String?
    var country, network, airDay, airTime: String?
    var status: String?
    var numSeasons, lastUpdated, v: Int?
    var episodes: [Episode]?
    var genres: [String]?
    var images: Images?
    var rating: Rating?

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case imdbID = "imdb_id"
        case tvdbID = "tvdb_id"
        case title, year, slug, synopsis, runtime, country, network
        case airDay = "air_day"
        case airTime = "air_time"
        case status
        case numSeasons = "num_seasons"
        case lastUpdated = "last_updated"
        case v = "__v"
        case episodes, genres, images, rating
    }
}

// MARK: - Episode
struct Episode: Codable {
    var torrents: [String: Torrent?]?
    var watched: Watched?
    var firstAired: Int?
    var dateBased: Bool?
    var overview, title: String?
    var episode, season, tvdbID: Int?

    enum CodingKeys: String, CodingKey {
        case torrents, watched
        case firstAired = "first_aired"
        case dateBased = "date_based"
        case overview, title, episode, season
        case tvdbID = "tvdb_id"
    }
}

// MARK: - Torrent
struct Torrent: Codable {
    var provider: String?
    var peers, seeds: Int?
    var url: String?
}

// MARK: - Watched
struct Watched: Codable {
    var watched: Bool?
}
