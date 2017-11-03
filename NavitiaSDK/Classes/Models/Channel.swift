//
// Channel.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import ObjectMapper


open class Channel: JSONEncodable, Mappable {

    public enum Types: String { 
        case web = "web"
        case sms = "sms"
        case email = "email"
        case mobile = "mobile"
        case notification = "notification"
        case twitter = "twitter"
        case facebook = "facebook"
        case unknownType = "unknown_type"
        case title = "title"
        case beacon = "beacon"
    }
    public var contentType: String?
    public var id: String?
    public var types: [Types]?
    public var name: String?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        contentType <- map["content_type"]
        id <- map["id"]
        types <- map["types"]
        name <- map["name"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["content_type"] = self.contentType
        nillableDictionary["id"] = self.id
        nillableDictionary["types"] = self.types?.map({$0.rawValue}).encodeToJSON()
        nillableDictionary["name"] = self.name

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
