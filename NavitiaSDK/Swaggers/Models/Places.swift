//
// Places.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Places: Codable {

    public var places: [Place]?
    public var links: [LinkSchema]?
    public var disruptions: [Disruption]
    public var feedPublishers: [FeedPublisher]
    public var context: Context?
    public var error: ModelError?

    public init(places: [Place]?, links: [LinkSchema]?, disruptions: [Disruption], feedPublishers: [FeedPublisher], context: Context?, error: ModelError?) {
        self.places = places
        self.links = links
        self.disruptions = disruptions
        self.feedPublishers = feedPublishers
        self.context = context
        self.error = error
    }

    public enum CodingKeys: String, CodingKey { 
        case places
        case links
        case disruptions
        case feedPublishers = "feed_publishers"
        case context
        case error
    }


}

