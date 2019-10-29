//
// CellLonSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class CellLonSchema: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case minLon, centerLon, maxLon, unknown
    }

    public var minLon: Float?
    public var centerLon: Float?
    public var maxLon: Float?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        minLon = try container.decode(Float.self, forKey: .minLon)
        centerLon = try container.decode(Float.self, forKey: .centerLon)
        maxLon = try container.decode(Float.self, forKey: .maxLon)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(minLon, forKey: .minLon)
        try container.encode(centerLon, forKey: .centerLon)
        try container.encode(maxLon, forKey: .maxLon)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        minLon <- map["min_lon"]
        centerLon <- map["center_lon"]
        maxLon <- map["max_lon"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["min_lon"] = self.minLon
        nillableDictionary["center_lon"] = self.centerLon
        nillableDictionary["max_lon"] = self.maxLon

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
