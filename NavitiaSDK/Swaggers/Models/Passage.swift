//
// Passage.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Passage: Codable {

    public var displayInformations: VJDisplayInformation?
    public var stopPoint: StopPoint?
    public var route: Route?
    public var links: [LinkSchema]?
    public var stopDateTime: StopDateTime?

    public init(displayInformations: VJDisplayInformation?, stopPoint: StopPoint?, route: Route?, links: [LinkSchema]?, stopDateTime: StopDateTime?) {
        self.displayInformations = displayInformations
        self.stopPoint = stopPoint
        self.route = route
        self.links = links
        self.stopDateTime = stopDateTime
    }

    public enum CodingKeys: String, CodingKey { 
        case displayInformations = "display_informations"
        case stopPoint = "stop_point"
        case route
        case links
        case stopDateTime = "stop_date_time"
    }


}

