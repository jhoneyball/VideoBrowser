//
//  ViewController.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import UIKit
import Dispatch
import VideoBrowserDomainModels

class VideoDetailsViewController: UIViewController {

    var videoDetailViewModel: VideoDetailViewModel!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var videoSynopsisLabel: UILabel!
    @IBOutlet weak var broadcastChannelLabel: UILabel!
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var navigationTitle: UINavigationItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.hidesWhenStopped = true
        spinner.startAnimating()
        videoSynopsisLabel.text = videoDetailViewModel.videoItem.synopsis
        broadcastChannelLabel.text = videoDetailViewModel.videoItem.broadcastChannel
        navigationTitle.title = videoDetailViewModel.videoItem.title
        if videoDetailViewModel.videoItem.image != nil {
            videoImageView.image = videoDetailViewModel.videoItem.image
            spinner.stopAnimating()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension VideoDetailsViewController: VideoItemDelegate {
    func delegateAlertForImageLoaded() {
        DispatchQueue.main.async {
            self.videoImageView.image = self.videoDetailViewModel.videoItem.image
            self.spinner.stopAnimating()
        }
    }
}
