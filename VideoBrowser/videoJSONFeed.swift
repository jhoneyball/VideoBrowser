//
//  videoJSONFeed.swift
//  VideoBrowser
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import Foundation

struct VideoJSONFeed {
    
    var theJSON: String?
    
    
    init() {
        if let filepath = Bundle.main.path(forResource: "Feed", ofType: "json") {
            do {
                let theJSON = try String(contentsOfFile: filepath)
                print(theJSON)
            } catch {
                // contents could not be loaded
            }
        } else {
            // example.txt not found!
        }
    }
}
