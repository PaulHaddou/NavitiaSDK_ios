//
// LineReportsApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CoverageLonLatLineReportsRequestBuilder: NSObject {
    let currentApi: LineReportsApi

    var lat:Double? = nil
    var lon:Double? = nil
    var depth:Int32? = nil
    var count:Int32? = nil
    var startPage:Int32? = nil
    var forbiddenUris:[String]? = nil
    var disableGeojson:Bool? = nil
    var since:Date? = nil
    var until:Date? = nil
    var debugURL: String? = nil

    public init(currentApi: LineReportsApi) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double?) -> CoverageLonLatLineReportsRequestBuilder {
        self.lat = lat
        
        return self
    }
    open func withLon(_ lon: Double?) -> CoverageLonLatLineReportsRequestBuilder {
        self.lon = lon
        
        return self
    }
    open func withDepth(_ depth: Int32?) -> CoverageLonLatLineReportsRequestBuilder {
        self.depth = depth
        
        return self
    }
    open func withCount(_ count: Int32?) -> CoverageLonLatLineReportsRequestBuilder {
        self.count = count
        
        return self
    }
    open func withStartPage(_ startPage: Int32?) -> CoverageLonLatLineReportsRequestBuilder {
        self.startPage = startPage
        
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]?) -> CoverageLonLatLineReportsRequestBuilder {
        self.forbiddenUris = forbiddenUris
        
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool?) -> CoverageLonLatLineReportsRequestBuilder {
        self.disableGeojson = disableGeojson
        
        return self
    }
    open func withSince(_ since: Date?) -> CoverageLonLatLineReportsRequestBuilder {
        self.since = since
        
        return self
    }
    open func withUntil(_ until: Date?) -> CoverageLonLatLineReportsRequestBuilder {
        self.until = until
        
        return self
    }



    open func withDebugURL(_ debugURL: String?) -> CoverageLonLatLineReportsRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/line_reports"

        if let lat = lat {
            let latPreEscape: String = "\(lat)"
            let latPostEscape: String = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        }

        if let lon = lon {
            let lonPreEscape: String = "\(lon)"
            let lonPostEscape: String = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "forbidden_uris[]": self.forbiddenUris, 
            "disable_geojson": self.disableGeojson, 
            "since": self.since?.encodeToJSON(), 
            "until": self.until?.encodeToJSON()
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)
        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")

        return (debugURL ?? url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: LineReports?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<LineReports>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.lat == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
    }
    if (self.lon == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
    }

    request(self.makeUrl())
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

open class CoverageLonLatUriLineReportsRequestBuilder: NSObject {
    let currentApi: LineReportsApi

    var lat:Double? = nil
    var lon:Double? = nil
    var uri:String? = nil
    var depth:Int32? = nil
    var count:Int32? = nil
    var startPage:Int32? = nil
    var forbiddenUris:[String]? = nil
    var disableGeojson:Bool? = nil
    var since:Date? = nil
    var until:Date? = nil
    var debugURL: String? = nil

    public init(currentApi: LineReportsApi) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.lat = lat
        
        return self
    }
    open func withLon(_ lon: Double?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.lon = lon
        
        return self
    }
    open func withUri(_ uri: String?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.uri = uri
        
        return self
    }
    open func withDepth(_ depth: Int32?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.depth = depth
        
        return self
    }
    open func withCount(_ count: Int32?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.count = count
        
        return self
    }
    open func withStartPage(_ startPage: Int32?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.startPage = startPage
        
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.forbiddenUris = forbiddenUris
        
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.disableGeojson = disableGeojson
        
        return self
    }
    open func withSince(_ since: Date?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.since = since
        
        return self
    }
    open func withUntil(_ until: Date?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.until = until
        
        return self
    }



    open func withDebugURL(_ debugURL: String?) -> CoverageLonLatUriLineReportsRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/{uri}/line_reports"

        if let lat = lat {
            let latPreEscape: String = "\(lat)"
            let latPostEscape: String = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        }

        if let lon = lon {
            let lonPreEscape: String = "\(lon)"
            let lonPostEscape: String = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        }

        if let uri = uri {
            let uriPreEscape: String = "\(uri)"
            let uriPostEscape: String = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "forbidden_uris[]": self.forbiddenUris, 
            "disable_geojson": self.disableGeojson, 
            "since": self.since?.encodeToJSON(), 
            "until": self.until?.encodeToJSON()
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)
        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")

        return (debugURL ?? url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: LineReports?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<LineReports>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.lat == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
    }
    if (self.lon == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
    }
    if (self.uri == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
    }

    request(self.makeUrl())
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

open class CoverageRegionLineReportsRequestBuilder: NSObject {
    let currentApi: LineReportsApi

    var region:String? = nil
    var depth:Int32? = nil
    var count:Int32? = nil
    var startPage:Int32? = nil
    var forbiddenUris:[String]? = nil
    var disableGeojson:Bool? = nil
    var since:Date? = nil
    var until:Date? = nil
    var debugURL: String? = nil

    public init(currentApi: LineReportsApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String?) -> CoverageRegionLineReportsRequestBuilder {
        self.region = region
        
        return self
    }
    open func withDepth(_ depth: Int32?) -> CoverageRegionLineReportsRequestBuilder {
        self.depth = depth
        
        return self
    }
    open func withCount(_ count: Int32?) -> CoverageRegionLineReportsRequestBuilder {
        self.count = count
        
        return self
    }
    open func withStartPage(_ startPage: Int32?) -> CoverageRegionLineReportsRequestBuilder {
        self.startPage = startPage
        
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]?) -> CoverageRegionLineReportsRequestBuilder {
        self.forbiddenUris = forbiddenUris
        
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool?) -> CoverageRegionLineReportsRequestBuilder {
        self.disableGeojson = disableGeojson
        
        return self
    }
    open func withSince(_ since: Date?) -> CoverageRegionLineReportsRequestBuilder {
        self.since = since
        
        return self
    }
    open func withUntil(_ until: Date?) -> CoverageRegionLineReportsRequestBuilder {
        self.until = until
        
        return self
    }



    open func withDebugURL(_ debugURL: String?) -> CoverageRegionLineReportsRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/line_reports"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "forbidden_uris[]": self.forbiddenUris, 
            "disable_geojson": self.disableGeojson, 
            "since": self.since?.encodeToJSON(), 
            "until": self.until?.encodeToJSON()
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)
        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")

        return (debugURL ?? url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: LineReports?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<LineReports>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.region == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
    }

    request(self.makeUrl())
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

open class CoverageRegionUriLineReportsRequestBuilder: NSObject {
    let currentApi: LineReportsApi

    var region:String? = nil
    var uri:String? = nil
    var depth:Int32? = nil
    var count:Int32? = nil
    var startPage:Int32? = nil
    var forbiddenUris:[String]? = nil
    var disableGeojson:Bool? = nil
    var since:Date? = nil
    var until:Date? = nil
    var debugURL: String? = nil

    public init(currentApi: LineReportsApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.region = region
        
        return self
    }
    open func withUri(_ uri: String?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.uri = uri
        
        return self
    }
    open func withDepth(_ depth: Int32?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.depth = depth
        
        return self
    }
    open func withCount(_ count: Int32?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.count = count
        
        return self
    }
    open func withStartPage(_ startPage: Int32?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.startPage = startPage
        
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.forbiddenUris = forbiddenUris
        
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.disableGeojson = disableGeojson
        
        return self
    }
    open func withSince(_ since: Date?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.since = since
        
        return self
    }
    open func withUntil(_ until: Date?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.until = until
        
        return self
    }



    open func withDebugURL(_ debugURL: String?) -> CoverageRegionUriLineReportsRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/{uri}/line_reports"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        if let uri = uri {
            let uriPreEscape: String = "\(uri)"
            let uriPostEscape: String = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "forbidden_uris[]": self.forbiddenUris, 
            "disable_geojson": self.disableGeojson, 
            "since": self.since?.encodeToJSON(), 
            "until": self.until?.encodeToJSON()
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)
        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")

        return (debugURL ?? url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: LineReports?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<LineReports>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.region == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
    }
    if (self.uri == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
    }

    request(self.makeUrl())
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



open class LineReportsApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageLonLatLineReportsRequestBuilder() -> CoverageLonLatLineReportsRequestBuilder {
        return CoverageLonLatLineReportsRequestBuilder(currentApi: self)
    }
    public func newCoverageLonLatUriLineReportsRequestBuilder() -> CoverageLonLatUriLineReportsRequestBuilder {
        return CoverageLonLatUriLineReportsRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionLineReportsRequestBuilder() -> CoverageRegionLineReportsRequestBuilder {
        return CoverageRegionLineReportsRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionUriLineReportsRequestBuilder() -> CoverageRegionUriLineReportsRequestBuilder {
        return CoverageRegionUriLineReportsRequestBuilder(currentApi: self)
    }
}
