//
// CO2.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class CO2: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case co2Emission, unknown
    }

    public var co2Emission: Amount?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        co2Emission = try container.decode(Amount.self, forKey: .co2Emission)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(co2Emission, forKey: .co2Emission)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        co2Emission <- map["co2_emission"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["co2_emission"] = self.co2Emission?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
