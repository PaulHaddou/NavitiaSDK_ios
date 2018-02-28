//
// JourneyDebug.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class JourneyDebug: JSONEncodable, Mappable {

    /** Number of stay-in */
    public var nbVjExtentions: Int32?
    /** Number of sections */
    public var nbSections: Int32?
    public var internalId: String?
    /** Total duration of streetnetwork use (seconds) */
    public var streetnetworkDuration: Int32?
    /** Total duration of transfers (seconds) */
    public var transferDuration: Int32?
    /** Minimum on all waiting durations (seconds) */
    public var minWaitingDuration: Int32?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        nbVjExtentions <- map["nb_vj_extentions"]
        nbSections <- map["nb_sections"]
        internalId <- map["internal_id"]
        streetnetworkDuration <- map["streetnetwork_duration"]
        transferDuration <- map["transfer_duration"]
        minWaitingDuration <- map["min_waiting_duration"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["nb_vj_extentions"] = self.nbVjExtentions?.encodeToJSON()
        nillableDictionary["nb_sections"] = self.nbSections?.encodeToJSON()
        nillableDictionary["internal_id"] = self.internalId
        nillableDictionary["streetnetwork_duration"] = self.streetnetworkDuration?.encodeToJSON()
        nillableDictionary["transfer_duration"] = self.transferDuration?.encodeToJSON()
        nillableDictionary["min_waiting_duration"] = self.minWaitingDuration?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
