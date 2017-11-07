//
// DateTimeType.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import ObjectMapper


open class DateTimeType: JSONEncodable, Mappable {

    public var dateTime: String?
    public var additionalInformations: [String]?
    public var baseDateTime: String?
    public var dataFreshness: String?
    public var links: [LinkSchema]?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        dateTime <- map["date_time"]
        additionalInformations <- map["additional_informations"]
        baseDateTime <- map["base_date_time"]
        dataFreshness <- map["data_freshness"]
        links <- map["links"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["date_time"] = self.dateTime
        nillableDictionary["additional_informations"] = self.additionalInformations?.encodeToJSON()
        nillableDictionary["base_date_time"] = self.baseDateTime
        nillableDictionary["data_freshness"] = self.dataFreshness
        nillableDictionary["links"] = self.links?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
