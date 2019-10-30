//
// PoiType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PoiType: JSONEncodable, Mappable {

    /** Identifier of the object */
    public var id: String?
    /** Name of the object */
    public var name: String?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
