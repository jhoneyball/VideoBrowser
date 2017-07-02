//
//  ViewController.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import UIKit
import VideoBrowser_DomainModels
import Dispatch

class MatchDetailsViewController: UIViewController {

    var matchDetailViewModel: MatchDetailViewModel!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var matchSynopsisLabel: UILabel!
    @IBOutlet weak var broadcastChannelLabel: UILabel!
    @IBOutlet weak var matchImageView: UIImageView!
    @IBOutlet weak var navigationTitle: UINavigationItem!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        spinner.hidesWhenStopped = true
        spinner.startAnimating()
        matchSynopsisLabel.text = matchDetailViewModel.matchItem.synopsis
        broadcastChannelLabel.text = matchDetailViewModel.matchItem.broadcastChannel
        navigationTitle.title = matchDetailViewModel.matchItem.title
        if matchDetailViewModel.matchItem.image != nil {
            matchImageView.image = matchDetailViewModel.matchItem.image
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
extension MatchDetailsViewController: VideoItemDelegate {
    func delegateAlertForImage() {
        DispatchQueue.main.async {
            self.matchImageView.image = self.matchDetailViewModel.matchItem.image
            self.spinner.stopAnimating()
        }        
    }
}
