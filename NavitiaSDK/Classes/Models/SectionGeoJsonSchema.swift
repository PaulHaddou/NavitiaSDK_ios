//
// SectionGeoJsonSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class SectionGeoJsonSchema: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case type, properties, coordinates, unknown
    }

    public var type: String?
    public var properties: [SectionGeoJsonSchemaProperties]?
    public var coordinates: [[Float]]?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        type = try container.decode(String.self, forKey: .type)
        properties = try container.decode([SectionGeoJsonSchemaProperties].self, forKey: .properties)
        coordinates = try container.decode([[Float]].self, forKey: .coordinates)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(type, forKey: .type)
        try container.encode(properties, forKey: .properties)
        try container.encode(coordinates, forKey: .coordinates)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        type <- map["type"]
        properties <- map["properties"]
        coordinates <- map["coordinates"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["type"] = self.type
        nillableDictionary["properties"] = self.properties?.encodeToJSON()
        nillableDictionary["coordinates"] = self.coordinates?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
