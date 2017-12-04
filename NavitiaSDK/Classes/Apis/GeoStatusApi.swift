//
// GeoStatusApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import AlamofireObjectMapper


open class CoverageRegionGeoStatusRequestBuilder: NSObject {
    let currentApi: GeoStatusApi

    var region:String? = nil

    public init(currentApi: GeoStatusApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String) -> CoverageRegionGeoStatusRequestBuilder {
        self.region = region
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/_geo_status"

        if (region != nil) {
            let regionPreEscape: String = "\(region!)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)


        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: GeoStatus1?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        Alamofire.request(self.makeUrl())
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

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
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



open class GeoStatusApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageRegionGeoStatusRequestBuilder() -> CoverageRegionGeoStatusRequestBuilder {
        return CoverageRegionGeoStatusRequestBuilder(currentApi: self)
    }
}
