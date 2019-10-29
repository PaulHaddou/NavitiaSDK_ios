//
// IndividualInformation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class IndividualInformation: JSONEncodable, Mappable, Codable {

/** Coding keys for Codable protocol */
    enum CodingKeys: CodingKey {
        case alias, image, gender, rating, unknown
    }

    public enum Gender: String, Codable { 
        case female = "female"
        case male = "male"
    }
    public var alias: String?
    public var image: String?
    public var gender: Gender?
    public var rating: IndividualRating?

    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        alias = try container.decode(String.self, forKey: .alias)
        image = try container.decode(String.self, forKey: .image)
        gender = try container.decode(Gender.self, forKey: .gender)
        rating = try container.decode(IndividualRating.self, forKey: .rating)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(alias, forKey: .alias)
        try container.encode(image, forKey: .image)
        try container.encode(gender, forKey: .gender)
        try container.encode(rating, forKey: .rating)
    }

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        alias <- map["alias"]
        image <- map["image"]
        gender <- map["gender"]
        rating <- map["rating"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["alias"] = self.alias
        nillableDictionary["image"] = self.image
        nillableDictionary["gender"] = self.gender?.rawValue
        nillableDictionary["rating"] = self.rating?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
