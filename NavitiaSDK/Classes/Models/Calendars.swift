//
// Calendars.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import ObjectMapper


open class Calendars: JSONEncodable, Mappable {

    public var pagination: Pagination?
    public var disruptions: [Disruption]?
    public var notes: [Note]?
    public var calendars: [Calendar]?
    public var feedPublishers: [FeedPublisher]?
    public var error: ModelError?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        pagination <- map["pagination"]
        disruptions <- map["disruptions"]
        notes <- map["notes"]
        calendars <- map["calendars"]
        feedPublishers <- map["feed_publishers"]
        error <- map["error"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["pagination"] = self.pagination?.encodeToJSON()
        nillableDictionary["disruptions"] = self.disruptions?.encodeToJSON()
        nillableDictionary["notes"] = self.notes?.encodeToJSON()
        nillableDictionary["calendars"] = self.calendars?.encodeToJSON()
        nillableDictionary["feed_publishers"] = self.feedPublishers?.encodeToJSON()
        nillableDictionary["error"] = self.error?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
