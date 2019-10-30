//
// Fare.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Fare: JSONEncodable, Mappable {

    public var found: Bool?
    public var total: Cost?
    public var links: [LinkSchema]?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        found <- map["found"]
        total <- map["total"]
        links <- map["links"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["found"] = self.found
        nillableDictionary["total"] = self.total?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
