//
//  videoItemTableViewController.swift
//  VideoBrowser
//
//  Created by James Honeyball on 04/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//


import UIKit

class MatchListTableViewController: UITableViewController {

    var matchListTableModel: MatchListTableModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.setNeedsLayout()
        self.tableView.layoutIfNeeded()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return matchListTableModel.matchItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCellIdentifier", for: indexPath) as! VideoItemCell
        cell.mainLabel?.text = matchListTableModel.matchItems[indexPath.row].title
        cell.subLabel?.text = matchListTableModel.matchItems[indexPath.row].synopsis
        return cell
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let matchDetailsViewController = segue.destination as! MatchDetailsViewController
        if let selectedItem = tableView.indexPathForSelectedRow?.item {
            matchDetailsViewController.matchDetailViewModel = MatchDetailViewModel(matchItem: matchListTableModel.matchItems[selectedItem])
            matchDetailsViewController.matchDetailViewModel.matchItem.delegate = matchDetailsViewController
        }
    }
}
