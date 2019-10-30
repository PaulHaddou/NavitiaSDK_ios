//
// VehicleJourney.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class VehicleJourney: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case comment, codes, name, journeyPattern, disruptions, startTime, headwaySecs, stopTimes, comments, validityPattern, endTime, id, trip, calendars, unknown
    }

    public var comment: String?
    public var codes: [Code]?
    /** Name of the object */
    public var name: String?
    public var journeyPattern: JourneyPattern?
    public var disruptions: [LinkSchema]?
    public var startTime: String?
    public var headwaySecs: Int32?
    public var stopTimes: [StopTime]?
    public var comments: [Comment]?
    public var validityPattern: ValidityPattern?
    public var endTime: String?
    /** Identifier of the object */
    public var id: String?
    public var trip: Trip?
    public var calendars: [Calendar]?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        comment = try container.decode(String.self, forKey: .comment)
        codes = try container.decode([Code].self, forKey: .codes)
        name = try container.decode(String.self, forKey: .name)
        journeyPattern = try container.decode(JourneyPattern.self, forKey: .journeyPattern)
        disruptions = try container.decode([LinkSchema].self, forKey: .disruptions)
        startTime = try container.decode(String.self, forKey: .startTime)
        headwaySecs = try container.decode(Int32.self, forKey: .headwaySecs)
        stopTimes = try container.decode([StopTime].self, forKey: .stopTimes)
        comments = try container.decode([Comment].self, forKey: .comments)
        validityPattern = try container.decode(ValidityPattern.self, forKey: .validityPattern)
        endTime = try container.decode(String.self, forKey: .endTime)
        id = try container.decode(String.self, forKey: .id)
        trip = try container.decode(Trip.self, forKey: .trip)
        calendars = try container.decode([Calendar].self, forKey: .calendars)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(comment, forKey: .comment)
        try container.encode(codes, forKey: .codes)
        try container.encode(name, forKey: .name)
        try container.encode(journeyPattern, forKey: .journeyPattern)
        try container.encode(disruptions, forKey: .disruptions)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(headwaySecs, forKey: .headwaySecs)
        try container.encode(stopTimes, forKey: .stopTimes)
        try container.encode(comments, forKey: .comments)
        try container.encode(validityPattern, forKey: .validityPattern)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(id, forKey: .id)
        try container.encode(trip, forKey: .trip)
        try container.encode(calendars, forKey: .calendars)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        comment <- map["comment"]
        codes <- map["codes"]
        name <- map["name"]
        journeyPattern <- map["journey_pattern"]
        disruptions <- map["disruptions"]
        startTime <- map["start_time"]
        headwaySecs <- map["headway_secs"]
        stopTimes <- map["stop_times"]
        comments <- map["comments"]
        validityPattern <- map["validity_pattern"]
        endTime <- map["end_time"]
        id <- map["id"]
        trip <- map["trip"]
        calendars <- map["calendars"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["comment"] = self.comment
        nillableDictionary["codes"] = self.codes?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["journey_pattern"] = self.journeyPattern?.encodeToJSON()
        nillableDictionary["disruptions"] = self.disruptions?.encodeToJSON()
        nillableDictionary["start_time"] = self.startTime
        nillableDictionary["headway_secs"] = self.headwaySecs?.encodeToJSON()
        nillableDictionary["stop_times"] = self.stopTimes?.encodeToJSON()
        nillableDictionary["comments"] = self.comments?.encodeToJSON()
        nillableDictionary["validity_pattern"] = self.validityPattern?.encodeToJSON()
        nillableDictionary["end_time"] = self.endTime
        nillableDictionary["id"] = self.id
        nillableDictionary["trip"] = self.trip?.encodeToJSON()
        nillableDictionary["calendars"] = self.calendars?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
