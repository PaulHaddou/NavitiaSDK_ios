//
// DictAddresses.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DictAddresses: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case regions, message, context, address, unknown
    }

    public var regions: [String]?
    public var message: String?
    public var context: Context?
    public var address: Address?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        regions = try container.decode([String].self, forKey: .regions)
        message = try container.decode(String.self, forKey: .message)
        context = try container.decode(Context.self, forKey: .context)
        address = try container.decode(Address.self, forKey: .address)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(regions, forKey: .regions)
        try container.encode(message, forKey: .message)
        try container.encode(context, forKey: .context)
        try container.encode(address, forKey: .address)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        regions <- map["regions"]
        message <- map["message"]
        context <- map["context"]
        address <- map["address"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["regions"] = self.regions?.encodeToJSON()
        nillableDictionary["message"] = self.message
        nillableDictionary["context"] = self.context?.encodeToJSON()
        nillableDictionary["address"] = self.address?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
