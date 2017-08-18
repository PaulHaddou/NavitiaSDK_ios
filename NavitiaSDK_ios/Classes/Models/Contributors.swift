//
// Contributors.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import ObjectMapper


open class Contributors: JSONEncodable, Mappable {

    public var disruptions: [Disruption]?
    public var pagination: Pagination?
    public var error: ModelError?
    public var contributors: [Contributor]?
    public var feedPublishers: [FeedPublisher]?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        disruptions <- map["disruptions"]
        pagination <- map["pagination"]
        error <- map["error"]
        contributors <- map["contributors"]
        feedPublishers <- map["feed_publishers"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["disruptions"] = self.disruptions?.encodeToJSON()
        nillableDictionary["pagination"] = self.pagination?.encodeToJSON()
        nillableDictionary["error"] = self.error?.encodeToJSON()
        nillableDictionary["contributors"] = self.contributors?.encodeToJSON()
        nillableDictionary["feed_publishers"] = self.feedPublishers?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
