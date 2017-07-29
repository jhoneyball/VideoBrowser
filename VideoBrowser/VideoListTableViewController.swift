//
//  videoItemTableViewController.swift
//  VideoBrowser
//
//  Created by James Honeyball on 04/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//


import UIKit
import VideoBrowserDomainModels

class VideoListTableViewController: UITableViewController {

    var videoListTableModel: VideoListTableModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // configure for variable height cells
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.setNeedsLayout()
        self.tableView.layoutIfNeeded()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return videoListTableModel.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellIdentifier", for: indexPath) as! VideoItemCell
        cell.mainLabel?.text = videoListTableModel.items[indexPath.row].title
        cell.subLabel?.text = videoListTableModel.items[indexPath.row].synopsis
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let videoDetailsViewController = segue.destination as! VideoDetailsViewController
        if let selectedItem = tableView.indexPathForSelectedRow?.item {
            videoDetailsViewController.videoDetailViewModel = VideoDetailViewModel(videoItem: videoListTableModel.items[selectedItem])
            videoDetailsViewController.videoDetailViewModel.videoItem.delegate = videoDetailsViewController
        }
    }
}
