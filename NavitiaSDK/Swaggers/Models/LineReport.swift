//
// LineReport.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct LineReport: Codable {

    public var line: Line?
    public var ptObjects: [PtObject]

    public init(line: Line?, ptObjects: [PtObject]) {
        self.line = line
        self.ptObjects = ptObjects
    }

    public enum CodingKeys: String, CodingKey { 
        case line
        case ptObjects = "pt_objects"
    }


}

