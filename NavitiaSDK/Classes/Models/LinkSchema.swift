//
// LinkSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import ObjectMapper


open class LinkSchema: JSONEncodable, Mappable {

    public var title: String?
    public var id: String?
    public var href: String?
    public var rel: String?
    public var templated: Bool?
    public var type: String?
    public var _internal: Bool?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        title <- map["title"]
        id <- map["id"]
        href <- map["href"]
        rel <- map["rel"]
        templated <- map["templated"]
        type <- map["type"]
        _internal <- map["internal"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["title"] = self.title
        nillableDictionary["id"] = self.id
        nillableDictionary["href"] = self.href
        nillableDictionary["rel"] = self.rel
        nillableDictionary["templated"] = self.templated
        nillableDictionary["type"] = self.type
        nillableDictionary["internal"] = self._internal

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
