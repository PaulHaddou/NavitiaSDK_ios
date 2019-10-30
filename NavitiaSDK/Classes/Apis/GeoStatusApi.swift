//
// GeoStatusApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CoverageLonLatGeoStatusRequestBuilder: NSObject {
    let currentApi: GeoStatusApi

    var lat:Double? = nil
    var lon:Double? = nil
    var debugURL: String? = nil

    public init(currentApi: GeoStatusApi) {
        self.currentApi = currentApi
    }

    public func withLat(_ lat: Double?) -> CoverageLonLatGeoStatusRequestBuilder {
        self.lat = lat
        
        return self
    }
    public func withLon(_ lon: Double?) -> CoverageLonLatGeoStatusRequestBuilder {
        self.lon = lon
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageLonLatGeoStatusRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/_geo_status"

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


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: GeoStatus1?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<GeoStatus1>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
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

public class CoverageRegionGeoStatusRequestBuilder: NSObject {
    let currentApi: GeoStatusApi

    var region:String? = nil
    var debugURL: String? = nil

    public init(currentApi: GeoStatusApi) {
        self.currentApi = currentApi
    }

    public func withRegion(_ region: String?) -> CoverageRegionGeoStatusRequestBuilder {
        self.region = region
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageRegionGeoStatusRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{region}/_geo_status"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: GeoStatus1?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<GeoStatus1>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
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



public class GeoStatusApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageLonLatGeoStatusRequestBuilder() -> CoverageLonLatGeoStatusRequestBuilder {
        return CoverageLonLatGeoStatusRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionGeoStatusRequestBuilder() -> CoverageRegionGeoStatusRequestBuilder {
        return CoverageRegionGeoStatusRequestBuilder(currentApi: self)
    }
}
