//
// LineHeadersSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LineHeadersSchema: Codable {

    public var cellLat: CellLatSchema

    public init(cellLat: CellLatSchema) {
        self.cellLat = cellLat
    }

    public enum CodingKeys: String, CodingKey { 
        case cellLat = "cell_lat"
    }


}
