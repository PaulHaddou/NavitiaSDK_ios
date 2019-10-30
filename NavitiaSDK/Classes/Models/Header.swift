//
// Header.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Header: JSONEncodable, Mappable {

    public var displayInformations: VJDisplayInformation?
    public var additionalInformations: [String]?
    public var links: [LinkSchema]?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        displayInformations <- map["display_informations"]
        additionalInformations <- map["additional_informations"]
        links <- map["links"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["display_informations"] = self.displayInformations?.encodeToJSON()
        nillableDictionary["additional_informations"] = self.additionalInformations?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
