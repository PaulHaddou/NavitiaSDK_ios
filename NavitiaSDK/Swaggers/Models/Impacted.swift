//
// Impacted.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Impacted: Codable {

    public var impactedStops: [ImpactedStop]?
    public var ptObject: PtObject?
    public var impactedSection: ImpactedSection?

    public init(impactedStops: [ImpactedStop]?, ptObject: PtObject?, impactedSection: ImpactedSection?) {
        self.impactedStops = impactedStops
        self.ptObject = ptObject
        self.impactedSection = impactedSection
    }

    public enum CodingKeys: String, CodingKey { 
        case impactedStops = "impacted_stops"
        case ptObject = "pt_object"
        case impactedSection = "impacted_section"
    }


}
