//
// Companie.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Companie: JSONEncodable, Mappable {

    public var codes: [Code]?
    /** Identifier of the object */
    public var id: String?
    /** Name of the object */
    public var name: String?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        codes <- map["codes"]
        id <- map["id"]
        name <- map["name"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["codes"] = self.codes?.encodeToJSON()
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
