//
//  EpisodeTableViewCell.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 08/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import UIKit

protocol EpisodeDelegate : class {
    func didRequestDownload(episode: Episode)
    func didRequestStream(episode: Episode)
}

class EpisodeTableViewCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    var episode : Episode!
    weak var delegate : EpisodeDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func downloadTapped(_ sender: Any) {
        delegate?.didRequestDownload(episode: episode)
    }
    
    
    @IBAction func streamTapped(_ sender: Any) {
        delegate?.didRequestStream(episode: episode)
    }
}
