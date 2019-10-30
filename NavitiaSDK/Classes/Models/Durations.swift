//
// Durations.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Durations: JSONEncodable, Mappable {

    /** Total duration by taxi of the journey (seconds) */
    public var taxi: Int32?
    /** Total walking duration of the journey (seconds) */
    public var walking: Int32?
    /** Total duration by car of the journey (seconds) */
    public var car: Int32?
    /** Total duration by ridesharing of the journey (seconds) */
    public var ridesharing: Int32?
    /** Total duration by bike of the journey (seconds) */
    public var bike: Int32?
    /** Total duration of the journey (seconds) */
    public var total: Int32?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        taxi <- map["taxi"]
        walking <- map["walking"]
        car <- map["car"]
        ridesharing <- map["ridesharing"]
        bike <- map["bike"]
        total <- map["total"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["taxi"] = self.taxi?.encodeToJSON()
        nillableDictionary["walking"] = self.walking?.encodeToJSON()
        nillableDictionary["car"] = self.car?.encodeToJSON()
        nillableDictionary["ridesharing"] = self.ridesharing?.encodeToJSON()
        nillableDictionary["bike"] = self.bike?.encodeToJSON()
        nillableDictionary["total"] = self.total?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
