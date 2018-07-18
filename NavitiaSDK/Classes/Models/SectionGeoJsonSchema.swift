//
// SectionGeoJsonSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class SectionGeoJsonSchema: JSONEncodable, Mappable {

    public var type: String?
    public var properties: [Any]?
    public var coordinates: [[Double]]?

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
