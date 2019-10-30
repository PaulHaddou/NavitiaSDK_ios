//
// Passage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Passage: JSONEncodable, Mappable {

    public var displayInformations: VJDisplayInformation?
    public var stopPoint: StopPoint?
    public var route: Route?
    public var links: [LinkSchema]?
    public var stopDateTime: StopDateTime?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        displayInformations <- map["display_informations"]
        stopPoint <- map["stop_point"]
        route <- map["route"]
        links <- map["links"]
        stopDateTime <- map["stop_date_time"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["display_informations"] = self.displayInformations?.encodeToJSON()
        nillableDictionary["stop_point"] = self.stopPoint?.encodeToJSON()
        nillableDictionary["route"] = self.route?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["stop_date_time"] = self.stopDateTime?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
