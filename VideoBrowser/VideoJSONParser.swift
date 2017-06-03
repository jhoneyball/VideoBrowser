//
//  VideoJSONParser.swift
//  VideoBrowser
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import Foundation

struct VideoJSONParser {
    var links: [String: String] = [String: String]()

    init? (from data: Data) {
        
        let json = try? JSONSerialization.jsonObject(with: data, options: [])
        
        if let dictionary = json as? [String: String] {
            links = dictionary
        } else {
            return nil
        }
    }
}

