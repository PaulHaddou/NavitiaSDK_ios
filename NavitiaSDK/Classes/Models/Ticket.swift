//
// Ticket.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Ticket: JSONEncodable, Mappable {

    public var comment: String?
    /** Name of the ticket */
    public var name: String?
    public var links: [LinkSchema]?
    public var cost: Cost?
    /** Product identifier of the ticket in the input data */
    public var sourceId: String?
    public var found: Bool?
    /** Identifier of the ticket */
    public var id: String?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        comment <- map["comment"]
        name <- map["name"]
        links <- map["links"]
        cost <- map["cost"]
        sourceId <- map["source_id"]
        found <- map["found"]
        id <- map["id"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["comment"] = self.comment
        nillableDictionary["name"] = self.name
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["cost"] = self.cost?.encodeToJSON()
        nillableDictionary["source_id"] = self.sourceId
        nillableDictionary["found"] = self.found
        nillableDictionary["id"] = self.id

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
