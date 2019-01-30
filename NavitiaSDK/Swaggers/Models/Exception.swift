//
// Exception.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Exception: Codable {

    public var date: String?
    public var type: String?
    public var _id: String

    public init(date: String?, type: String?, _id: String) {
        self.date = date
        self.type = type
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case date
        case type
        case _id = "id"
    }


}

