//
//  testVideoJSONFeed.swift
//  VideoBrowser
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import XCTest
@testable import VideoBrowser

class testVideoJSONFeed: XCTestCase {
    
    func testVideoJSONFeedExistance() {
        
        let videoJSONFeed = VideoJSONFeed()
        
        XCTAssertEqual("Hello", videoJSONFeed.theJSON)
    }
}

