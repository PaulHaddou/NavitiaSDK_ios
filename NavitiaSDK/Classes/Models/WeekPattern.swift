//
// WeekPattern.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class WeekPattern: JSONEncodable, Mappable {

    public var monday: Bool?
    public var tuesday: Bool?
    public var friday: Bool?
    public var wednesday: Bool?
    public var thursday: Bool?
    public var sunday: Bool?
    public var saturday: Bool?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        monday <- map["monday"]
        tuesday <- map["tuesday"]
        friday <- map["friday"]
        wednesday <- map["wednesday"]
        thursday <- map["thursday"]
        sunday <- map["sunday"]
        saturday <- map["saturday"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["monday"] = self.monday
        nillableDictionary["tuesday"] = self.tuesday
        nillableDictionary["friday"] = self.friday
        nillableDictionary["wednesday"] = self.wednesday
        nillableDictionary["thursday"] = self.thursday
        nillableDictionary["sunday"] = self.sunday
        nillableDictionary["saturday"] = self.saturday

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
