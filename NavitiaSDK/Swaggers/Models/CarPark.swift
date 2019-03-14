//
// CarPark.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct CarPark: Codable {

    public var available: Int?
    public var totalPlaces: Int?
    public var occupiedPRM: Int?
    public var occupied: Int?
    public var availablePRM: Int?

    public init(available: Int?, totalPlaces: Int?, occupiedPRM: Int?, occupied: Int?, availablePRM: Int?) {
        self.available = available
        self.totalPlaces = totalPlaces
        self.occupiedPRM = occupiedPRM
        self.occupied = occupied
        self.availablePRM = availablePRM
    }

    public enum CodingKeys: String, CodingKey { 
        case available
        case totalPlaces = "total_places"
        case occupiedPRM = "occupied_PRM"
        case occupied
        case availablePRM = "available_PRM"
    }


}
