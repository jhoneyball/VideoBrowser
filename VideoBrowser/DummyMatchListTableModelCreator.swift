//
//  DummyListTableModel.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import UIKit

struct DummyMatchListTableModelCreator {
    
    var matchItems: [MatchItem]
    
    init() {
        self.matchItems = [MatchItemStruct]()
    }

    mutating func create() -> MatchListTableModel {
        
        let matchItem1 = MatchItemStruct(title: "Reading vs Chelsea",
                                         synopsis: "Highlights of the Premier League match between Reading and Chelsea from The Madjeski Stadium.",
                                         broadcastChannel: "Sky Sports",
                                         image: nil)
        self.matchItems.append(matchItem1)
        
        let matchItem2 = MatchItemStruct(title: "Reading vs Manchester City",
                                         synopsis: "Highlights of the Premier League match between Reading and Manchester City from The Madjeski Stadium.",
                                         broadcastChannel: "Sky Sports",
                                         image: nil)
        self.matchItems.append(matchItem2)

        return MatchListTableModel(matchItems: self.matchItems)
    }
}

protocol MatchItem {
    var title: String {get}
    var synopsis: String {get}
    var broadcastChannel: String {get}
    var image: UIImage? {get}
}

struct MatchItemStruct: MatchItem {
    var title: String
    var synopsis: String
    var broadcastChannel: String
    var image: UIImage?
}
