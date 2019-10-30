//
// PtObjects.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PtObjects: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case links, disruptions, feedPublishers, context, error, ptObjects, unknown
    }

    public var links: [LinkSchema]?
    public var disruptions: [Disruption]?
    public var feedPublishers: [FeedPublisher]?
    public var context: Context?
    public var error: ModelError?
    public var ptObjects: [PtObject]?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        links = try container.decode([LinkSchema].self, forKey: .links)
        disruptions = try container.decode([Disruption].self, forKey: .disruptions)
        feedPublishers = try container.decode([FeedPublisher].self, forKey: .feedPublishers)
        context = try container.decode(Context.self, forKey: .context)
        error = try container.decode(ModelError.self, forKey: .error)
        ptObjects = try container.decode([PtObject].self, forKey: .ptObjects)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(links, forKey: .links)
        try container.encode(disruptions, forKey: .disruptions)
        try container.encode(feedPublishers, forKey: .feedPublishers)
        try container.encode(context, forKey: .context)
        try container.encode(error, forKey: .error)
        try container.encode(ptObjects, forKey: .ptObjects)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        links <- map["links"]
        disruptions <- map["disruptions"]
        feedPublishers <- map["feed_publishers"]
        context <- map["context"]
        error <- map["error"]
        ptObjects <- map["pt_objects"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["disruptions"] = self.disruptions?.encodeToJSON()
        nillableDictionary["feed_publishers"] = self.feedPublishers?.encodeToJSON()
        nillableDictionary["context"] = self.context?.encodeToJSON()
        nillableDictionary["error"] = self.error?.encodeToJSON()
        nillableDictionary["pt_objects"] = self.ptObjects?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
