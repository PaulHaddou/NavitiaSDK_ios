//
// CarPark.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class CarPark: JSONEncodable, Mappable {

    public var available: Int32?
    public var totalPlaces: Int32?
    public var occupiedPRM: Int32?
    public var occupied: Int32?
    public var availablePRM: Int32?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        available <- map["available"]
        totalPlaces <- map["total_places"]
        occupiedPRM <- map["occupied_PRM"]
        occupied <- map["occupied"]
        availablePRM <- map["available_PRM"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["available"] = self.available?.encodeToJSON()
        nillableDictionary["total_places"] = self.totalPlaces?.encodeToJSON()
        nillableDictionary["occupied_PRM"] = self.occupiedPRM?.encodeToJSON()
        nillableDictionary["occupied"] = self.occupied?.encodeToJSON()
        nillableDictionary["available_PRM"] = self.availablePRM?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}