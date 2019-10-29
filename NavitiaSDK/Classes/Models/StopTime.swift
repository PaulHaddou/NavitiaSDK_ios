//
// StopTime.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class StopTime: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case stopPoint, utcArrivalTime, utcDepartureTime, headsign, arrivalTime, journeyPatternPoint, dropOffAllowed, pickupAllowed, departureTime, unknown
    }

    public var stopPoint: StopPoint?
    public var utcArrivalTime: String?
    public var utcDepartureTime: String?
    public var headsign: String?
    public var arrivalTime: String?
    public var journeyPatternPoint: JourneyPatternPoint?
    public var dropOffAllowed: Bool?
    public var pickupAllowed: Bool?
    public var departureTime: String?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        stopPoint = try container.decode(StopPoint.self, forKey: .stopPoint)
        utcArrivalTime = try container.decode(String.self, forKey: .utcArrivalTime)
        utcDepartureTime = try container.decode(String.self, forKey: .utcDepartureTime)
        headsign = try container.decode(String.self, forKey: .headsign)
        arrivalTime = try container.decode(String.self, forKey: .arrivalTime)
        journeyPatternPoint = try container.decode(JourneyPatternPoint.self, forKey: .journeyPatternPoint)
        dropOffAllowed = try container.decode(Bool.self, forKey: .dropOffAllowed)
        pickupAllowed = try container.decode(Bool.self, forKey: .pickupAllowed)
        departureTime = try container.decode(String.self, forKey: .departureTime)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(stopPoint, forKey: .stopPoint)
        try container.encode(utcArrivalTime, forKey: .utcArrivalTime)
        try container.encode(utcDepartureTime, forKey: .utcDepartureTime)
        try container.encode(headsign, forKey: .headsign)
        try container.encode(arrivalTime, forKey: .arrivalTime)
        try container.encode(journeyPatternPoint, forKey: .journeyPatternPoint)
        try container.encode(dropOffAllowed, forKey: .dropOffAllowed)
        try container.encode(pickupAllowed, forKey: .pickupAllowed)
        try container.encode(departureTime, forKey: .departureTime)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        stopPoint <- map["stop_point"]
        utcArrivalTime <- map["utc_arrival_time"]
        utcDepartureTime <- map["utc_departure_time"]
        headsign <- map["headsign"]
        arrivalTime <- map["arrival_time"]
        journeyPatternPoint <- map["journey_pattern_point"]
        dropOffAllowed <- map["drop_off_allowed"]
        pickupAllowed <- map["pickup_allowed"]
        departureTime <- map["departure_time"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["stop_point"] = self.stopPoint?.encodeToJSON()
        nillableDictionary["utc_arrival_time"] = self.utcArrivalTime
        nillableDictionary["utc_departure_time"] = self.utcDepartureTime
        nillableDictionary["headsign"] = self.headsign
        nillableDictionary["arrival_time"] = self.arrivalTime
        nillableDictionary["journey_pattern_point"] = self.journeyPatternPoint?.encodeToJSON()
        nillableDictionary["drop_off_allowed"] = self.dropOffAllowed
        nillableDictionary["pickup_allowed"] = self.pickupAllowed
        nillableDictionary["departure_time"] = self.departureTime

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
