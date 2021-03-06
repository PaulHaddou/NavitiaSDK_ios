//
// GraphicalIsrochone.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class GraphicalIsrochone: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case maxDuration, from, geojson, minDuration, minDateTime, to, requestedDateTime, maxDateTime, unknown
    }

    public var maxDuration: Int32?
    public var from: Place?
    public var geojson: GraphicalIsrochoneGeojson?
    public var minDuration: Int32?
    public var minDateTime: String?
    public var to: Place?
    public var requestedDateTime: String?
    public var maxDateTime: String?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        maxDuration = try container.decode(Int32.self, forKey: .maxDuration)
        from = try container.decode(Place.self, forKey: .from)
        geojson = try container.decode(GraphicalIsrochoneGeojson.self, forKey: .geojson)
        minDuration = try container.decode(Int32.self, forKey: .minDuration)
        minDateTime = try container.decode(String.self, forKey: .minDateTime)
        to = try container.decode(Place.self, forKey: .to)
        requestedDateTime = try container.decode(String.self, forKey: .requestedDateTime)
        maxDateTime = try container.decode(String.self, forKey: .maxDateTime)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(maxDuration, forKey: .maxDuration)
        try container.encode(from, forKey: .from)
        try container.encode(geojson, forKey: .geojson)
        try container.encode(minDuration, forKey: .minDuration)
        try container.encode(minDateTime, forKey: .minDateTime)
        try container.encode(to, forKey: .to)
        try container.encode(requestedDateTime, forKey: .requestedDateTime)
        try container.encode(maxDateTime, forKey: .maxDateTime)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        maxDuration <- map["max_duration"]
        from <- map["from"]
        geojson <- map["geojson"]
        minDuration <- map["min_duration"]
        minDateTime <- map["min_date_time"]
        to <- map["to"]
        requestedDateTime <- map["requested_date_time"]
        maxDateTime <- map["max_date_time"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["max_duration"] = self.maxDuration?.encodeToJSON()
        nillableDictionary["from"] = self.from?.encodeToJSON()
        nillableDictionary["geojson"] = self.geojson?.encodeToJSON()
        nillableDictionary["min_duration"] = self.minDuration?.encodeToJSON()
        nillableDictionary["min_date_time"] = self.minDateTime
        nillableDictionary["to"] = self.to?.encodeToJSON()
        nillableDictionary["requested_date_time"] = self.requestedDateTime
        nillableDictionary["max_date_time"] = self.maxDateTime

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
