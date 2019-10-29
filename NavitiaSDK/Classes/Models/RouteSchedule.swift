//
// RouteSchedule.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class RouteSchedule: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case displayInformations, table, additionalInformations, geojson, links, unknown
    }

    public var displayInformations: RouteDisplayInformation?
    public var table: Table?
    public var additionalInformations: String?
    public var geojson: MultiLineStringSchema?
    public var links: [LinkSchema]?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        displayInformations = try container.decode(RouteDisplayInformation.self, forKey: .displayInformations)
        table = try container.decode(Table.self, forKey: .table)
        additionalInformations = try container.decode(String.self, forKey: .additionalInformations)
        geojson = try container.decode(MultiLineStringSchema.self, forKey: .geojson)
        links = try container.decode([LinkSchema].self, forKey: .links)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(displayInformations, forKey: .displayInformations)
        try container.encode(table, forKey: .table)
        try container.encode(additionalInformations, forKey: .additionalInformations)
        try container.encode(geojson, forKey: .geojson)
        try container.encode(links, forKey: .links)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        displayInformations <- map["display_informations"]
        table <- map["table"]
        additionalInformations <- map["additional_informations"]
        geojson <- map["geojson"]
        links <- map["links"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["display_informations"] = self.displayInformations?.encodeToJSON()
        nillableDictionary["table"] = self.table?.encodeToJSON()
        nillableDictionary["additional_informations"] = self.additionalInformations
        nillableDictionary["geojson"] = self.geojson?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
