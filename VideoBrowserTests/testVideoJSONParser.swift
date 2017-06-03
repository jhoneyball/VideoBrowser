//
//  testVideoJSONParser.swift
//  VideoBrowser
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import XCTest
@testable import VideoBrowser

class testVideoJSONParser: XCTestCase {
    
    func testLinks() {
        
        let testJSON = "{\"_links\": [{\"title\": \"honeyball\"}]}".data(using: .utf8)!
        let videoJSONParser = VideoJSONParser(from: testJSON)!

        
    
    }
    

    
}
