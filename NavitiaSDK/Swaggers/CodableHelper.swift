//
// CodableHelper.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

public typealias EncodeResult = (data: Data?, error: Error?)

open class CodableHelper {

    open static var dateformatter: DateFormatter?

    open class func decode<T>(_ type: T.Type, from data: Data) -> (decodableObj: T?, error: Error?) where T : Decodable {
        var returnedDecodable: T? = nil
        var returnedError: Error? = nil

        let decoder = JSONDecoder()
        if let df = self.dateformatter {
            decoder.dateDecodingStrategy = .formatted(df)
        } else {
            decoder.dataDecodingStrategy = .base64
            let formatter = DateFormatter()
            formatter.calendar = Foundation.Calendar(identifier: .iso8601)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
            decoder.dateDecodingStrategy = .formatted(formatter)
        }

        do {
            returnedDecodable = try decoder.decode(type, from: data)
        } catch {
            returnedError = error
        }

        return (returnedDecodable, returnedError)
    }

    open class func encode<T>(_ value: T, prettyPrint: Bool = false) -> EncodeResult where T : Encodable {
        var returnedData: Data?
        var returnedError: Error? = nil

        let encoder = JSONEncoder()
        if prettyPrint {
            encoder.outputFormatting = .prettyPrinted
        }
        encoder.dataEncodingStrategy = .base64
        let formatter = DateFormatter()
        formatter.calendar = Foundation.Calendar(identifier: .iso8601)
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSXXXXX"
        encoder.dateEncodingStrategy = .formatted(formatter)

        do {
            returnedData = try encoder.encode(value)
        } catch {
            returnedError = error
        }

        return (returnedData, returnedError)
    }

}
