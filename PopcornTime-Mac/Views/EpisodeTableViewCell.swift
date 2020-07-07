//
//  EpisodeTableViewCell.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 08/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    var season : Int?
    var episode : Int?
    var episodeTitle : String?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
