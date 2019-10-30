//
// PoiTypes.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PoiTypes: JSONEncodable, Mappable {

    public var pagination: Pagination?
    public var links: [LinkSchema]?
    public var disruptions: [Disruption]?
    public var notes: [Note]?
    public var feedPublishers: [FeedPublisher]?
    public var context: Context?
    public var error: ModelError?
    public var poiTypes: [PoiType]?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        pagination <- map["pagination"]
        links <- map["links"]
        disruptions <- map["disruptions"]
        notes <- map["notes"]
        feedPublishers <- map["feed_publishers"]
        context <- map["context"]
        error <- map["error"]
        poiTypes <- map["poi_types"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["pagination"] = self.pagination?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["disruptions"] = self.disruptions?.encodeToJSON()
        nillableDictionary["notes"] = self.notes?.encodeToJSON()
        nillableDictionary["feed_publishers"] = self.feedPublishers?.encodeToJSON()
        nillableDictionary["context"] = self.context?.encodeToJSON()
        nillableDictionary["error"] = self.error?.encodeToJSON()
        nillableDictionary["poi_types"] = self.poiTypes?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
