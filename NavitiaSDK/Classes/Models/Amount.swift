//
// Amount.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Amount: JSONEncodable, Mappable {

    public var value: Float?
    public var unit: String?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        value <- map["value"]
        unit <- map["unit"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["value"] = self.value
        nillableDictionary["unit"] = self.unit

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
