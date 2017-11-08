//
// CalendarsApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import AlamofireObjectMapper


open class CoverageRegionCalendarsRequestBuilder: NSObject {
    let currentApi: CalendarsApi

    var region:String? = nil
    var depth:Int32? = nil
    var count:Int32? = nil
    var startPage:Int32? = nil
    var startDate:String? = nil
    var endDate:String? = nil
    var forbiddenId:[String]? = nil
    var forbiddenUris:[String]? = nil
    var distance:Int32? = nil

    public init(currentApi: CalendarsApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String) -> CoverageRegionCalendarsRequestBuilder {
        self.region = region
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageRegionCalendarsRequestBuilder {
        self.depth = depth
        return self
    }
    open func withCount(_ count: Int32) -> CoverageRegionCalendarsRequestBuilder {
        self.count = count
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageRegionCalendarsRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withStartDate(_ startDate: String) -> CoverageRegionCalendarsRequestBuilder {
        self.startDate = startDate
        return self
    }
    open func withEndDate(_ endDate: String) -> CoverageRegionCalendarsRequestBuilder {
        self.endDate = endDate
        return self
    }
    open func withForbiddenId(_ forbiddenId: [String]) -> CoverageRegionCalendarsRequestBuilder {
        self.forbiddenId = forbiddenId
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]) -> CoverageRegionCalendarsRequestBuilder {
        self.forbiddenUris = forbiddenUris
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageRegionCalendarsRequestBuilder {
        self.distance = distance
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/calendars"
        path = path.replacingOccurrences(of: "{region}", with: "\(self.region!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "start_date": self.startDate, 
            "end_date": self.endDate, 
            "forbidden_id[]": self.forbiddenId, 
            "forbidden_uris[]": self.forbiddenUris, 
            "distance": self.distance?.encodeToJSON()
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: Calendars?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<Calendars>)) in
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

open class CoverageRegionCalendarsIdRequestBuilder: NSObject {
    let currentApi: CalendarsApi

    var region:String? = nil
    var id:String? = nil
    var depth:Int32? = nil
    var count:Int32? = nil
    var startPage:Int32? = nil
    var startDate:String? = nil
    var endDate:String? = nil
    var forbiddenId:[String]? = nil
    var forbiddenUris:[String]? = nil
    var distance:Int32? = nil

    public init(currentApi: CalendarsApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String) -> CoverageRegionCalendarsIdRequestBuilder {
        self.region = region
        return self
    }
    open func withId(_ id: String) -> CoverageRegionCalendarsIdRequestBuilder {
        self.id = id
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageRegionCalendarsIdRequestBuilder {
        self.depth = depth
        return self
    }
    open func withCount(_ count: Int32) -> CoverageRegionCalendarsIdRequestBuilder {
        self.count = count
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageRegionCalendarsIdRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withStartDate(_ startDate: String) -> CoverageRegionCalendarsIdRequestBuilder {
        self.startDate = startDate
        return self
    }
    open func withEndDate(_ endDate: String) -> CoverageRegionCalendarsIdRequestBuilder {
        self.endDate = endDate
        return self
    }
    open func withForbiddenId(_ forbiddenId: [String]) -> CoverageRegionCalendarsIdRequestBuilder {
        self.forbiddenId = forbiddenId
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]) -> CoverageRegionCalendarsIdRequestBuilder {
        self.forbiddenUris = forbiddenUris
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageRegionCalendarsIdRequestBuilder {
        self.distance = distance
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/calendars/{id}"
        path = path.replacingOccurrences(of: "{region}", with: "\(self.region!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{id}", with: "\(self.id!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "start_date": self.startDate, 
            "end_date": self.endDate, 
            "forbidden_id[]": self.forbiddenId, 
            "forbidden_uris[]": self.forbiddenUris, 
            "distance": self.distance?.encodeToJSON()
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: Calendars?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.id == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<Calendars>)) in
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
    if (self.id == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
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

open class CoverageRegionUriCalendarsRequestBuilder: NSObject {
    let currentApi: CalendarsApi

    var region:String? = nil
    var uri:String? = nil
    var depth:Int32? = nil
    var count:Int32? = nil
    var startPage:Int32? = nil
    var startDate:String? = nil
    var endDate:String? = nil
    var forbiddenId:[String]? = nil
    var forbiddenUris:[String]? = nil
    var distance:Int32? = nil

    public init(currentApi: CalendarsApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String) -> CoverageRegionUriCalendarsRequestBuilder {
        self.region = region
        return self
    }
    open func withUri(_ uri: String) -> CoverageRegionUriCalendarsRequestBuilder {
        self.uri = uri
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageRegionUriCalendarsRequestBuilder {
        self.depth = depth
        return self
    }
    open func withCount(_ count: Int32) -> CoverageRegionUriCalendarsRequestBuilder {
        self.count = count
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageRegionUriCalendarsRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withStartDate(_ startDate: String) -> CoverageRegionUriCalendarsRequestBuilder {
        self.startDate = startDate
        return self
    }
    open func withEndDate(_ endDate: String) -> CoverageRegionUriCalendarsRequestBuilder {
        self.endDate = endDate
        return self
    }
    open func withForbiddenId(_ forbiddenId: [String]) -> CoverageRegionUriCalendarsRequestBuilder {
        self.forbiddenId = forbiddenId
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]) -> CoverageRegionUriCalendarsRequestBuilder {
        self.forbiddenUris = forbiddenUris
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageRegionUriCalendarsRequestBuilder {
        self.distance = distance
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/{uri}/calendars"
        path = path.replacingOccurrences(of: "{region}", with: "\(self.region!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{uri}", with: "\(self.uri!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "start_date": self.startDate, 
            "end_date": self.endDate, 
            "forbidden_id[]": self.forbiddenId, 
            "forbidden_uris[]": self.forbiddenUris, 
            "distance": self.distance?.encodeToJSON()
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: Calendars?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<Calendars>)) in
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



open class CalendarsApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageRegionCalendarsRequestBuilder() -> CoverageRegionCalendarsRequestBuilder {
        return CoverageRegionCalendarsRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionCalendarsIdRequestBuilder() -> CoverageRegionCalendarsIdRequestBuilder {
        return CoverageRegionCalendarsIdRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionUriCalendarsRequestBuilder() -> CoverageRegionUriCalendarsRequestBuilder {
        return CoverageRegionUriCalendarsRequestBuilder(currentApi: self)
    }
}