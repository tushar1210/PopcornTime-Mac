//
//  MovieDetailViewController.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 07/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import UIKit
import Kingfisher
import XCDYouTubeKit
import AVKit

class MovieDetailViewController: UIViewController {

    var movie = Movie()
    @IBOutlet weak var movieBannerView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var youtubeButton: UIButton!
    @IBOutlet weak var button1080p: UIButton!
    @IBOutlet weak var button720p: UIButton!
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
    
    func setupYouTubeURL() {
        if movie.trailer == nil {
            youtubeButton.isHidden = true
        }
        else {
            let playerViewController = AVPlayerViewController()
            let id = movie.trailer?.components(separatedBy: "?v=")[1]
            XCDYouTubeClient.default().getVideoWithIdentifier(id) { (video, error) in
                guard let video: XCDYouTubeVideo = video else { return }
                print(video.streamURL)
                playerViewController.player = AVPlayer(url: video.streamURL)
                playerViewController.player?.play()
                self.present(playerViewController, animated: true)
                
            }
        }
    }

    @IBAction func backTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func watchTrailerTapped(_ sender: Any) {
        setupYouTubeURL()
    }
    
    @IBAction func _720pTapped(_ sender: Any) {
    }
    
    @IBAction func _1080pTapped(_ sender: Any) {
    }
    
}
