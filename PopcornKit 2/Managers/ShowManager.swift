//
//  ShowManager.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 06/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import Foundation
import Just

class ShowManager {
    
    static let shared = ShowManager()
    
    func loadShows(page: Int, completion: @escaping(Result<[Show], Error>)->Void) {
        Just.get(Endpoints.Show.shows+String(page)) { (r) in
            if r.ok {
                let shows = try? JSONDecoder().decode([Show].self, from: r.content ?? Data())
                completion(.success(shows ?? [Show]()))
            }
            else {
                print(r.error)
                completion(.failure(r.error!))
            }
        }
        
    }
    
}
