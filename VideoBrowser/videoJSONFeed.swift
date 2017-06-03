//
//  videoJSONFeed.swift
//  VideoBrowser
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import Foundation

struct VideoJSONFeed {
    
    let theJSON: String
    
    
    init?(fromFile name: String, ofType ext: String) {
        if let filepath = Bundle.main.path(forResource: name, ofType: ext) {
            do {
                theJSON = try String(contentsOfFile: filepath)
            } catch {
                return nil
            }
        } else {
            return nil
        }
    }
}
