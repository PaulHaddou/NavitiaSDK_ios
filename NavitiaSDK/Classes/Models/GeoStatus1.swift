//
// GeoStatus1.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import ObjectMapper


open class GeoStatus1: JSONEncodable, Mappable {

    public var geoStatus: GeoStatus?
    public var context: Context?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        geoStatus <- map["geo_status"]
        context <- map["context"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["geo_status"] = self.geoStatus?.encodeToJSON()
        nillableDictionary["context"] = self.context?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
