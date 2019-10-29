//
// Departures.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class Departures: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case pagination, links, disruptions, notes, feedPublishers, departures, context, error, exceptions, unknown
    }

    public var pagination: Pagination?
    public var links: [LinkSchema]?
    public var disruptions: [Disruption]?
    public var notes: [Note]?
    public var feedPublishers: [FeedPublisher]?
    public var departures: [Passage]?
    public var context: Context?
    public var error: ModelError?
    public var exceptions: [Exception]?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        pagination = try container.decode(Pagination.self, forKey: .pagination)
        links = try container.decode([LinkSchema].self, forKey: .links)
        disruptions = try container.decode([Disruption].self, forKey: .disruptions)
        notes = try container.decode([Note].self, forKey: .notes)
        feedPublishers = try container.decode([FeedPublisher].self, forKey: .feedPublishers)
        departures = try container.decode([Passage].self, forKey: .departures)
        context = try container.decode(Context.self, forKey: .context)
        error = try container.decode(ModelError.self, forKey: .error)
        exceptions = try container.decode([Exception].self, forKey: .exceptions)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pagination, forKey: .pagination)
        try container.encode(links, forKey: .links)
        try container.encode(disruptions, forKey: .disruptions)
        try container.encode(notes, forKey: .notes)
        try container.encode(feedPublishers, forKey: .feedPublishers)
        try container.encode(departures, forKey: .departures)
        try container.encode(context, forKey: .context)
        try container.encode(error, forKey: .error)
        try container.encode(exceptions, forKey: .exceptions)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        pagination <- map["pagination"]
        links <- map["links"]
        disruptions <- map["disruptions"]
        notes <- map["notes"]
        feedPublishers <- map["feed_publishers"]
        departures <- map["departures"]
        context <- map["context"]
        error <- map["error"]
        exceptions <- map["exceptions"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["pagination"] = self.pagination?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["disruptions"] = self.disruptions?.encodeToJSON()
        nillableDictionary["notes"] = self.notes?.encodeToJSON()
        nillableDictionary["feed_publishers"] = self.feedPublishers?.encodeToJSON()
        nillableDictionary["departures"] = self.departures?.encodeToJSON()
        nillableDictionary["context"] = self.context?.encodeToJSON()
        nillableDictionary["error"] = self.error?.encodeToJSON()
        nillableDictionary["exceptions"] = self.exceptions?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
