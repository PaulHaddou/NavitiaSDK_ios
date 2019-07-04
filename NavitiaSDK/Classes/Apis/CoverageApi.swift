//
// CoverageApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class CoverageRequestBuilder: NSObject {
    let currentApi: CoverageApi

    var disableGeojson:Bool? = nil
    var debugURL: String? = nil

    public init(currentApi: CoverageApi) {
        self.currentApi = currentApi
    }

    open func withDisableGeojson(_ disableGeojson: Bool?) -> CoverageRequestBuilder {
        self.disableGeojson = disableGeojson
        
        return self
    }



    open func withDebugURL(_ debugURL: String?) -> CoverageRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    open func makeUrl() -> String {
        let path = "/coverage/"

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)
        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")

        return (debugURL ?? url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: Coverages?,_ error: Error?) -> Void)) {

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<Coverages>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {

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

open class CoverageLonLatRequestBuilder: NSObject {
    let currentApi: CoverageApi

    var lat:Double? = nil
    var lon:Double? = nil
    var disableGeojson:Bool? = nil
    var debugURL: String? = nil

    public init(currentApi: CoverageApi) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double?) -> CoverageLonLatRequestBuilder {
        self.lat = lat
        
        return self
    }
    open func withLon(_ lon: Double?) -> CoverageLonLatRequestBuilder {
        self.lon = lon
        
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool?) -> CoverageLonLatRequestBuilder {
        self.disableGeojson = disableGeojson
        
        return self
    }



    open func withDebugURL(_ debugURL: String?) -> CoverageLonLatRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/"

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
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)
        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")

        return (debugURL ?? url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: Coverages?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<Coverages>)) in
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

open class CoverageRegionRequestBuilder: NSObject {
    let currentApi: CoverageApi

    var region:String? = nil
    var disableGeojson:Bool? = nil
    var debugURL: String? = nil

    public init(currentApi: CoverageApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String?) -> CoverageRegionRequestBuilder {
        self.region = region
        
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool?) -> CoverageRegionRequestBuilder {
        self.disableGeojson = disableGeojson
        
        return self
    }



    open func withDebugURL(_ debugURL: String?) -> CoverageRegionRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)
        url?.percentEncodedQuery = url?.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")

        return (debugURL ?? url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: Coverages?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<Coverages>)) in
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



open class CoverageApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageRequestBuilder() -> CoverageRequestBuilder {
        return CoverageRequestBuilder(currentApi: self)
    }
    public func newCoverageLonLatRequestBuilder() -> CoverageLonLatRequestBuilder {
        return CoverageLonLatRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionRequestBuilder() -> CoverageRegionRequestBuilder {
        return CoverageRegionRequestBuilder(currentApi: self)
    }
}