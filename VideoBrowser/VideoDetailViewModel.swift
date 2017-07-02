//
//  MatchDetailViewModel.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import Foundation
import VideoBrowser_DomainModels

struct MatchDetailViewModel {
    var matchItem: VideoItem

    init(matchItem: VideoItem) {
        self.matchItem = matchItem
    }
}
