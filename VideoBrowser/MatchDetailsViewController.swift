//
//  ViewController.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import UIKit

class MatchDetailsViewController: UIViewController {

    var matchDetailViewModel: MatchDetailViewModel!
    
    @IBOutlet weak var matchSynopsisLabel: UILabel!
    @IBOutlet weak var broadcastChannelLabel: UILabel!
    @IBOutlet var matchImageView: UIImageView!
    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        matchSynopsisLabel.text = matchDetailViewModel.matchItem.synopsis
        broadcastChannelLabel.text = matchDetailViewModel.matchItem.broadcastChannel
        matchImageView.image = matchDetailViewModel.matchItem.image
        navigationTitle.title = matchDetailViewModel.matchItem.title
        // Do any additional setup after loading the view.

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
