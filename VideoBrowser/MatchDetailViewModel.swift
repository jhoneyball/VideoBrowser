//
//  MatchDetailViewModel.swift
//  VideoBrowser
//
//  Created by James Honeyball on 11/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import Foundation
import MatchList

struct MatchDetailViewModel {
    var matchItem: MatchItem

    init(matchItem: MatchItem) {
        self.matchItem = matchItem
    }
}
