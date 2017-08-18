//
// ImpactedSection.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import ObjectMapper


open class ImpactedSection: JSONEncodable, Mappable {

    public var to: PtObject?
    public var from: PtObject?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        to <- map["to"]
        from <- map["from"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["to"] = self.to?.encodeToJSON()
        nillableDictionary["from"] = self.from?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
