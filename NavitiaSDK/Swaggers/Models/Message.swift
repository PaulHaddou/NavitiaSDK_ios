//
// Message.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Message: Codable {

    public var text: String?
    public var channel: Channel?

    public init(text: String?, channel: Channel?) {
        self.text = text
        self.channel = channel
    }


}
