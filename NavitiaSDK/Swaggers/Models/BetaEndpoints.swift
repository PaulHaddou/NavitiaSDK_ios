//
// BetaEndpoints.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct BetaEndpoints: Codable {

    public var message: String
    public var _id: String

    public init(message: String, _id: String) {
        self.message = message
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case message
        case _id = "id"
    }


}
