//
//  VideoBrowserTests.swift
//  VideoBrowserTests
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//

import XCTest
@testable import VideoBrowser

class VideoBrowserTests: XCTestCase {

    func testExample() {

        let videoJSONFeed = VideoJSONFeed()
        
        XCTAssertEqual("Hello", videoJSONFeed.theJSON)
    }
    
    
}
