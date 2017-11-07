//
// PtobjectsApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import AlamofireObjectMapper


open class CoverageLonLatPtObjectsRequestBuilder: NSObject {
    let currentApi: PtobjectsApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case network = "network"
        case commercialMode = "commercial_mode"
        case line = "line"
        case lineGroup = "line_group"
        case route = "route"
        case stopArea = "stop_area"
    }
    var q:String? = nil
    var lat:Double? = nil
    var lon:Double? = nil
    var type: [ModelType]? = nil
    var count:Int32? = nil
    var adminUri:[String]? = nil
    var depth:Int32? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PtobjectsApi) {
        self.currentApi = currentApi
    }

    open func withQ(_ q: String) -> CoverageLonLatPtObjectsRequestBuilder {
        self.q = q
        return self
    }
    open func withLat(_ lat: Double) -> CoverageLonLatPtObjectsRequestBuilder {
        self.lat = lat
        return self
    }
    open func withLon(_ lon: Double) -> CoverageLonLatPtObjectsRequestBuilder {
        self.lon = lon
        return self
    }
    open func withType(_ type: [ModelType]) -> CoverageLonLatPtObjectsRequestBuilder {
        self.type = type
        return self
    }
    open func withCount(_ count: Int32) -> CoverageLonLatPtObjectsRequestBuilder {
        self.count = count
        return self
    }
    open func withAdminUri(_ adminUri: [String]) -> CoverageLonLatPtObjectsRequestBuilder {
        self.adminUri = adminUri
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageLonLatPtObjectsRequestBuilder {
        self.depth = depth
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageLonLatPtObjectsRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/pt_objects"
        path = path.replacingOccurrences(of: "{lat}", with: "\(self.lat!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{lon}", with: "\(self.lon!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "q": self.q!, 
            "type[]": self.type, 
            "count": self.count?.encodeToJSON(), 
            "admin_uri[]": self.adminUri, 
            "depth": self.depth?.encodeToJSON(), 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PtObjects?,_ error: Error?) -> Void)) {
        if (self.q == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : q"])))
        }
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<PtObjects>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.q == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : q"])))
    }
    if (self.lat == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
    }
    if (self.lon == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
    }

    Alamofire.request(self.makeUrl())
        .authenticate(user: currentApi.token, password: "")
        .validate()
        .responseString{ (response: (DataResponse<String>)) in
            switch response.result {
            case .success:
                completion(response.result.value, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}

open class CoverageRegionPtObjectsRequestBuilder: NSObject {
    let currentApi: PtobjectsApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case network = "network"
        case commercialMode = "commercial_mode"
        case line = "line"
        case lineGroup = "line_group"
        case route = "route"
        case stopArea = "stop_area"
    }
    var q:String? = nil
    var region:String? = nil
    var type: [ModelType]? = nil
    var count:Int32? = nil
    var adminUri:[String]? = nil
    var depth:Int32? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PtobjectsApi) {
        self.currentApi = currentApi
    }

    open func withQ(_ q: String) -> CoverageRegionPtObjectsRequestBuilder {
        self.q = q
        return self
    }
    open func withRegion(_ region: String) -> CoverageRegionPtObjectsRequestBuilder {
        self.region = region
        return self
    }
    open func withType(_ type: [ModelType]) -> CoverageRegionPtObjectsRequestBuilder {
        self.type = type
        return self
    }
    open func withCount(_ count: Int32) -> CoverageRegionPtObjectsRequestBuilder {
        self.count = count
        return self
    }
    open func withAdminUri(_ adminUri: [String]) -> CoverageRegionPtObjectsRequestBuilder {
        self.adminUri = adminUri
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageRegionPtObjectsRequestBuilder {
        self.depth = depth
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageRegionPtObjectsRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/pt_objects"
        path = path.replacingOccurrences(of: "{region}", with: "\(self.region!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "q": self.q!, 
            "type[]": self.type, 
            "count": self.count?.encodeToJSON(), 
            "admin_uri[]": self.adminUri, 
            "depth": self.depth?.encodeToJSON(), 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PtObjects?,_ error: Error?) -> Void)) {
        if (self.q == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : q"])))
        }
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<PtObjects>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.q == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : q"])))
    }
    if (self.region == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
    }

    Alamofire.request(self.makeUrl())
        .authenticate(user: currentApi.token, password: "")
        .validate()
        .responseString{ (response: (DataResponse<String>)) in
            switch response.result {
            case .success:
                completion(response.result.value, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
}



open class PtobjectsApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageLonLatPtObjectsRequestBuilder() -> CoverageLonLatPtObjectsRequestBuilder {
        return CoverageLonLatPtObjectsRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionPtObjectsRequestBuilder() -> CoverageRegionPtObjectsRequestBuilder {
        return CoverageRegionPtObjectsRequestBuilder(currentApi: self)
    }
}
