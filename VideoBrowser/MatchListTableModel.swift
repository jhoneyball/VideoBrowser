//
//  MatchListTableModel.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import UIKit
import MatchList

struct MatchListTableModel {
    
    var matchItems: [MatchItem] = [MatchItem]()
    
    
    mutating func addItems(_ items: MatchList){
        
        for item in items.matchItems {
            
            let matchItem = structMatchItem(title: item.title,
                                            synopsis: item.synopsis,
                                            broadcastChannel: item.broadcastChannel,
                                            image: item.image)
            self.matchItems.append(matchItem)
        }
    }
    
    struct structMatchItem: MatchItem {
        var title: String
        var synopsis: String
        var broadcastChannel: String
        var image: UIImage?
    }
}
