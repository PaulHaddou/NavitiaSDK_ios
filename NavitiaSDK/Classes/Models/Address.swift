//
// Address.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Address: JSONEncodable, Mappable {

    /** Name of the object */
    public var name: String?
    public var houseNumber: Int32?
    public var coord: Coord?
    public var label: String?
    public var administrativeRegions: [Admin]?
    /** Identifier of the object */
    public var id: String?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        name <- map["name"]
        houseNumber <- map["house_number"]
        coord <- map["coord"]
        label <- map["label"]
        administrativeRegions <- map["administrative_regions"]
        id <- map["id"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["house_number"] = self.houseNumber?.encodeToJSON()
        nillableDictionary["coord"] = self.coord?.encodeToJSON()
        nillableDictionary["label"] = self.label
        nillableDictionary["administrative_regions"] = self.administrativeRegions?.encodeToJSON()
        nillableDictionary["id"] = self.id

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
