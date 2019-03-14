//
// DictAddresses.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DictAddresses: Codable {

    public var regions: [String]
    public var message: String?
    public var context: Context?
    public var address: Address?

    public init(regions: [String], message: String?, context: Context?, address: Address?) {
        self.regions = regions
        self.message = message
        self.context = context
        self.address = address
    }


}
