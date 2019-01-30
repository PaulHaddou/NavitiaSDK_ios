//
// LineGroups.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LineGroups: Codable {

    public var pagination: Pagination
    public var links: [LinkSchema]?
    public var disruptions: [Disruption]
    public var notes: [Note]?
    public var feedPublishers: [FeedPublisher]
    public var context: Context?
    public var error: ModelError?
    public var lineGroups: [LineGroup]?

    public init(pagination: Pagination, links: [LinkSchema]?, disruptions: [Disruption], notes: [Note]?, feedPublishers: [FeedPublisher], context: Context?, error: ModelError?, lineGroups: [LineGroup]?) {
        self.pagination = pagination
        self.links = links
        self.disruptions = disruptions
        self.notes = notes
        self.feedPublishers = feedPublishers
        self.context = context
        self.error = error
        self.lineGroups = lineGroups
    }

    public enum CodingKeys: String, CodingKey { 
        case pagination
        case links
        case disruptions
        case notes
        case feedPublishers = "feed_publishers"
        case context
        case error
        case lineGroups = "line_groups"
    }


}

