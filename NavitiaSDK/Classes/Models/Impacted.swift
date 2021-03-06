//
// Impacted.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Impacted: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case impactedStops, ptObject, impactedSection, unknown
    }

    public var impactedStops: [ImpactedStop]?
    public var ptObject: PtObject?
    public var impactedSection: ImpactedSection?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        impactedStops = try container.decode([ImpactedStop].self, forKey: .impactedStops)
        ptObject = try container.decode(PtObject.self, forKey: .ptObject)
        impactedSection = try container.decode(ImpactedSection.self, forKey: .impactedSection)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(impactedStops, forKey: .impactedStops)
        try container.encode(ptObject, forKey: .ptObject)
        try container.encode(impactedSection, forKey: .impactedSection)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        impactedStops <- map["impacted_stops"]
        ptObject <- map["pt_object"]
        impactedSection <- map["impacted_section"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["impacted_stops"] = self.impactedStops?.encodeToJSON()
        nillableDictionary["pt_object"] = self.ptObject?.encodeToJSON()
        nillableDictionary["impacted_section"] = self.impactedSection?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
