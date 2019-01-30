//
// JourneyPatternPoint.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct JourneyPatternPoint: Codable {

    public var stopPoint: StopPoint?
    public var _id: String

    public init(stopPoint: StopPoint?, _id: String) {
        self.stopPoint = stopPoint
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case stopPoint = "stop_point"
        case _id = "id"
    }


}

