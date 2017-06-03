//
//  testVideoJSONFeed.swift
//  VideoBrowser
//
//  Created by James Honeyball on 03/06/2017.
//  Copyright © 2017 James Honeyball. All rights reserved.
//
import Foundation
import XCTest
@testable import VideoBrowser

class testVideoJSONFeed: XCTestCase {
    func testVideoJSONFeedFailsToLoad() {
        
        let videoJSONFeed = VideoJSONFeed(fromFile: "NoFeed", ofType: "json")
        XCTAssertNil(videoJSONFeed)
    }
    func testVideoJSONFeedExistance() {
        
        let videoJSONFeed = VideoJSONFeed(fromFile: "Feed", ofType: "json")
        XCTAssertNotNil(videoJSONFeed)
    }
    
    func testVideoJSONFeedContainsValidJSON() {
        if let videoJSONFeed = VideoJSONFeed(fromFile: "Feed", ofType: "json") {
            if let jsonStringData: Data = videoJSONFeed.theJSON.data(using: .utf8) {
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: jsonStringData, options: [])
                    XCTAssertNotNil(jsonObject)
                } catch {
                    XCTFail("Cannot serialise Feed.json into json object")
                }
            }
        }
    }
}

