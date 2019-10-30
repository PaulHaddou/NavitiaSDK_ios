//
// LinesSchema.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class LinesSchema: JSONEncodable, Mappable {

    public var duration: [Int32]?
    public var cellLon: CellLonSchema?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        duration <- map["duration"]
        cellLon <- map["cell_lon"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["duration"] = self.duration?.encodeToJSON()
        nillableDictionary["cell_lon"] = self.cellLon?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
