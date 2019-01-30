//
// CellLatSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CellLatSchema: Codable {

    public var minLat: Float?
    public var maxLat: Float?
    public var centerLat: Float?

    public init(minLat: Float?, maxLat: Float?, centerLat: Float?) {
        self.minLat = minLat
        self.maxLat = maxLat
        self.centerLat = centerLat
    }

    public enum CodingKeys: String, CodingKey { 
        case minLat = "min_lat"
        case maxLat = "max_lat"
        case centerLat = "center_lat"
    }


}

