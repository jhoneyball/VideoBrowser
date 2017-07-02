//
//  MatchListTableModel.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import UIKit
import VideoBrowser_DomainModels

struct MatchListTableModel {
    
    var items: [VideoItem]!
    var count: Int {
        return items.count
    }
}
