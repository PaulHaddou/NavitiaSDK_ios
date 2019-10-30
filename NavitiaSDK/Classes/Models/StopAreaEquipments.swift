//
// StopAreaEquipments.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class StopAreaEquipments: JSONEncodable, Mappable {

    public var stopArea: StopArea?
    public var equipmentDetails: [EquipmentDetails]?

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
