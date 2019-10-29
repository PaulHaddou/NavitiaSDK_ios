//
// StopArea.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class StopArea: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case comment, codes, name, links, physicalModes, comments, label, commercialModes, coord, administrativeRegions, timezone, stopPoints, id, unknown
    }

    public var comment: String?
    public var codes: [Code]?
    /** Name of the object */
    public var name: String?
    public var links: [LinkSchema]?
    public var physicalModes: [PhysicalMode]?
    public var comments: [Comment]?
    /**  Label of the stop area. The name is directly taken from the data whereas the label is  something we compute for better traveler information. If you don&#39;t know what to display, display the label.  */
    public var label: String?
    public var commercialModes: [CommercialMode]?
    public var coord: Coord?
    public var administrativeRegions: [Admin]?
    public var timezone: String?
    public var stopPoints: [StopPoint]?
    /** Identifier of the object */
    public var id: String?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        comment = try container.decode(String.self, forKey: .comment)
        codes = try container.decode([Code].self, forKey: .codes)
        name = try container.decode(String.self, forKey: .name)
        links = try container.decode([LinkSchema].self, forKey: .links)
        physicalModes = try container.decode([PhysicalMode].self, forKey: .physicalModes)
        comments = try container.decode([Comment].self, forKey: .comments)
        label = try container.decode(String.self, forKey: .label)
        commercialModes = try container.decode([CommercialMode].self, forKey: .commercialModes)
        coord = try container.decode(Coord.self, forKey: .coord)
        administrativeRegions = try container.decode([Admin].self, forKey: .administrativeRegions)
        timezone = try container.decode(String.self, forKey: .timezone)
        stopPoints = try container.decode([StopPoint].self, forKey: .stopPoints)
        id = try container.decode(String.self, forKey: .id)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(comment, forKey: .comment)
        try container.encode(codes, forKey: .codes)
        try container.encode(name, forKey: .name)
        try container.encode(links, forKey: .links)
        try container.encode(physicalModes, forKey: .physicalModes)
        try container.encode(comments, forKey: .comments)
        try container.encode(label, forKey: .label)
        try container.encode(commercialModes, forKey: .commercialModes)
        try container.encode(coord, forKey: .coord)
        try container.encode(administrativeRegions, forKey: .administrativeRegions)
        try container.encode(timezone, forKey: .timezone)
        try container.encode(stopPoints, forKey: .stopPoints)
        try container.encode(id, forKey: .id)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        comment <- map["comment"]
        codes <- map["codes"]
        name <- map["name"]
        links <- map["links"]
        physicalModes <- map["physical_modes"]
        comments <- map["comments"]
        label <- map["label"]
        commercialModes <- map["commercial_modes"]
        coord <- map["coord"]
        administrativeRegions <- map["administrative_regions"]
        timezone <- map["timezone"]
        stopPoints <- map["stop_points"]
        id <- map["id"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["comment"] = self.comment
        nillableDictionary["codes"] = self.codes?.encodeToJSON()
        nillableDictionary["name"] = self.name
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["physical_modes"] = self.physicalModes?.encodeToJSON()
        nillableDictionary["comments"] = self.comments?.encodeToJSON()
        nillableDictionary["label"] = self.label
        nillableDictionary["commercial_modes"] = self.commercialModes?.encodeToJSON()
        nillableDictionary["coord"] = self.coord?.encodeToJSON()
        nillableDictionary["administrative_regions"] = self.administrativeRegions?.encodeToJSON()
        nillableDictionary["timezone"] = self.timezone
        nillableDictionary["stop_points"] = self.stopPoints?.encodeToJSON()
        nillableDictionary["id"] = self.id

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
