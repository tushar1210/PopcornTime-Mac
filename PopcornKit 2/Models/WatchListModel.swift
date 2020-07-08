//
//  WatchListModel.swift
//  PopcornTime-Mac
//
//  Created by Tushar Singh on 07/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import Foundation

struct WatchListModel{
    enum type:String{
        case show
        case movie
    }
    var id, imdbID, tvdbID, title: String?
    var numSeasons, episode: Int?
    var released: Int?
    var images: Images?
}
