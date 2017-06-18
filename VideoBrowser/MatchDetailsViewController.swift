//
//  ViewController.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import UIKit
import MatchList

class MatchDetailsViewController: UIViewController {

    var matchDetailViewModel: MatchDetailViewModel!
    
    @IBOutlet weak var matchSynopsisLabel: UILabel!
    @IBOutlet weak var broadcastChannelLabel: UILabel!
    @IBOutlet var matchImageView: UIImageView!
    @IBOutlet weak var navigationTitle: UINavigationItem!
    var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        spinner = UIActivityIndicatorView(activityIndicatorStyle: .gray)
        let height = matchImageView.frame.height / 2.0
        let width = height
        let x = matchImageView.frame.width / 2.0
        let y = matchImageView.frame.height / 2.0
        spinner.center = matchImageView.center
        matchImageView.addSubview(spinner)
        spinner.startAnimating()

        matchDetailViewModel.matchItem.delegate = self
        matchSynopsisLabel.text = matchDetailViewModel.matchItem.synopsis
        broadcastChannelLabel.text = matchDetailViewModel.matchItem.broadcastChannel
        navigationTitle.title = matchDetailViewModel.matchItem.title
        //if matchDetailViewModel.matchItem.image != nil {
        //    matchImageView.image = matchDetailViewModel.matchItem.image
        //    spinner.stopAnimating()
        //}
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
extension MatchDetailsViewController: MatchItemDelegate {
    func delegateAlertForImage() {
        // matchImageView.image = matchDetailViewModel.matchItem.image
        //self.spinner.stopAnimating()
    }
}
