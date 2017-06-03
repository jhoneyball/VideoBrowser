//
//  VideoJSONParser.swift
//  VideoBrowser
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import Foundation

struct VideoJSONParser {
    var links: [[String: Any]] = [[String: Any]]()

    init? (from data: Data) {
        
        let json = try? JSONSerialization.jsonObject(with: data, options: [])
        
        if let linksDictionary = json as? [String: Any] {
            if let videosDictionaryArray = linksDictionary["_links"] as? [Any] {
                for video in videosDictionaryArray {
                    links.append(video as! [String: Any])
                }
            }
        } else {
            return nil
        }
    }
}

