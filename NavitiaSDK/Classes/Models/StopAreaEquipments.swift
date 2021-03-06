//
// StopAreaEquipments.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class StopAreaEquipments: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case stopArea, equipmentDetails, unknown
    }

    public var stopArea: StopArea?
    public var equipmentDetails: [EquipmentDetails]?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        stopArea = try container.decode(StopArea.self, forKey: .stopArea)
        equipmentDetails = try container.decode([EquipmentDetails].self, forKey: .equipmentDetails)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(stopArea, forKey: .stopArea)
        try container.encode(equipmentDetails, forKey: .equipmentDetails)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        stopArea <- map["stop_area"]
        equipmentDetails <- map["equipment_details"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["stop_area"] = self.stopArea?.encodeToJSON()
        nillableDictionary["equipment_details"] = self.equipmentDetails?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
