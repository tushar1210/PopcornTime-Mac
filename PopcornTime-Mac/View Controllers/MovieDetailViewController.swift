//
//  MovieDetailViewController.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 07/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import UIKit
import Kingfisher

class MovieDetailViewController: UIViewController {

    var movie = Movie()
    @IBOutlet weak var movieBannerView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var moviePosterView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieBannerView.kf.setImage(with: URL(string: movie.images?.fanart ?? ""))
        moviePosterView.kf.setImage(with: URL(string: movie.images?.banner ?? ""))
        moviePosterView.makeCard()
        titleLabel.text = movie.title
        yearLabel.text = movie.year
        synopsisLabel.text = movie.synopsis
    }

    @IBAction func backTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
