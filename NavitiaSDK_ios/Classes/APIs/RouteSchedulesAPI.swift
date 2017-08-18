//
// RouteSchedulesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import AlamofireObjectMapper


open class CoverageLonLatUriRouteSchedulesRequestBuilder: NSObject {
    let currentApi: RouteSchedulesAPI

    /**
    * enum for parameter dataFreshness
    */
    public enum DataFreshness_getCoverageLonLatUriRouteSchedules: String { 
        case baseSchedule = "base_schedule"
        case adaptedSchedule = "adapted_schedule"
        case realtime = "realtime"
    }
    var lat: Double? = nil
    var lon: Double? = nil
    var uri: String? = nil
    var filter: String? = nil
    var fromDatetime: String? = nil
    var untilDatetime: String? = nil
    var duration: Int32? = nil
    var depth: Int32? = nil
    var count: Int32? = nil
    var startPage: Int32? = nil
    var maxDateTimes: Int32? = nil
    var forbiddenId: [String]? = nil
    var forbiddenUris: [String]? = nil
    var calendar: String? = nil
    var distance: Int32? = nil
    var showCodes: Bool? = nil
    var dataFreshness: DataFreshness_getCoverageLonLatUriRouteSchedules? = nil
    var itemsPerSchedule: Int32? = nil
    var disableGeojson: Bool? = nil

    public init(currentApi: RouteSchedulesAPI) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.lat = lat
        return self
    }
    open func withLon(_ lon: Double) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.lon = lon
        return self
    }
    open func withUri(_ uri: String) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.uri = uri
        return self
    }
    open func withFilter(_ filter: String) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.filter = filter
        return self
    }
    open func withFromDatetime(_ fromDatetime: String) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.fromDatetime = fromDatetime
        return self
    }
    open func withUntilDatetime(_ untilDatetime: String) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.untilDatetime = untilDatetime
        return self
    }
    open func withDuration(_ duration: Int32) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.duration = duration
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.depth = depth
        return self
    }
    open func withCount(_ count: Int32) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.count = count
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withMaxDateTimes(_ maxDateTimes: Int32) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.maxDateTimes = maxDateTimes
        return self
    }
    open func withForbiddenId(_ forbiddenId: [String]) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.forbiddenId = forbiddenId
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.forbiddenUris = forbiddenUris
        return self
    }
    open func withCalendar(_ calendar: String) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.calendar = calendar
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.distance = distance
        return self
    }
    open func withShowCodes(_ showCodes: Bool) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.showCodes = showCodes
        return self
    }
    open func withDataFreshness(_ dataFreshness: DataFreshness_getCoverageLonLatUriRouteSchedules) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.dataFreshness = dataFreshness
        return self
    }
    open func withDataFreshness(_ dataFreshnessValue: String) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        return withDataFreshness(DataFreshness_getCoverageLonLatUriRouteSchedules(rawValue: dataFreshnessValue)!);
    }
    open func withItemsPerSchedule(_ itemsPerSchedule: Int32) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.itemsPerSchedule = itemsPerSchedule
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/{uri}/route_schedules"
        path = path.replacingOccurrences(of: "{lat}", with: "\(self.lat!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{lon}", with: "\(self.lon!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{uri}", with: "\(self.uri!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any] = [
            "filter": self.filter, 
            "from_datetime": self.fromDatetime, 
            "until_datetime": self.untilDatetime, 
            "duration": self.duration?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "max_date_times": self.maxDateTimes?.encodeToJSON(), 
            "forbidden_id[]": self.forbiddenId, 
            "forbidden_uris[]": self.forbiddenUris, 
            "calendar": self.calendar, 
            "distance": self.distance?.encodeToJSON(), 
            "show_codes": self.showCodes, 
            "data_freshness": self.dataFreshness?.rawValue, 
            "items_per_schedule": self.itemsPerSchedule?.encodeToJSON(), 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: RouteSchedules?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<RouteSchedules>)) in
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

open class CoverageRegionUriRouteSchedulesRequestBuilder: NSObject {
    let currentApi: RouteSchedulesAPI

    /**
    * enum for parameter dataFreshness
    */
    public enum DataFreshness_getCoverageRegionUriRouteSchedules: String { 
        case baseSchedule = "base_schedule"
        case adaptedSchedule = "adapted_schedule"
        case realtime = "realtime"
    }
    var region: String? = nil
    var uri: String? = nil
    var filter: String? = nil
    var fromDatetime: String? = nil
    var untilDatetime: String? = nil
    var duration: Int32? = nil
    var depth: Int32? = nil
    var count: Int32? = nil
    var startPage: Int32? = nil
    var maxDateTimes: Int32? = nil
    var forbiddenId: [String]? = nil
    var forbiddenUris: [String]? = nil
    var calendar: String? = nil
    var distance: Int32? = nil
    var showCodes: Bool? = nil
    var dataFreshness: DataFreshness_getCoverageRegionUriRouteSchedules? = nil
    var itemsPerSchedule: Int32? = nil
    var disableGeojson: Bool? = nil

    public init(currentApi: RouteSchedulesAPI) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.region = region
        return self
    }
    open func withUri(_ uri: String) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.uri = uri
        return self
    }
    open func withFilter(_ filter: String) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.filter = filter
        return self
    }
    open func withFromDatetime(_ fromDatetime: String) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.fromDatetime = fromDatetime
        return self
    }
    open func withUntilDatetime(_ untilDatetime: String) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.untilDatetime = untilDatetime
        return self
    }
    open func withDuration(_ duration: Int32) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.duration = duration
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.depth = depth
        return self
    }
    open func withCount(_ count: Int32) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.count = count
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withMaxDateTimes(_ maxDateTimes: Int32) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.maxDateTimes = maxDateTimes
        return self
    }
    open func withForbiddenId(_ forbiddenId: [String]) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.forbiddenId = forbiddenId
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.forbiddenUris = forbiddenUris
        return self
    }
    open func withCalendar(_ calendar: String) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.calendar = calendar
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.distance = distance
        return self
    }
    open func withShowCodes(_ showCodes: Bool) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.showCodes = showCodes
        return self
    }
    open func withDataFreshness(_ dataFreshness: DataFreshness_getCoverageRegionUriRouteSchedules) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.dataFreshness = dataFreshness
        return self
    }
    open func withDataFreshness(_ dataFreshnessValue: String) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        return withDataFreshness(DataFreshness_getCoverageRegionUriRouteSchedules(rawValue: dataFreshnessValue)!);
    }
    open func withItemsPerSchedule(_ itemsPerSchedule: Int32) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.itemsPerSchedule = itemsPerSchedule
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageRegionUriRouteSchedulesRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/{uri}/route_schedules"
        path = path.replacingOccurrences(of: "{region}", with: "\(self.region!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{uri}", with: "\(self.uri!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any] = [
            "filter": self.filter, 
            "from_datetime": self.fromDatetime, 
            "until_datetime": self.untilDatetime, 
            "duration": self.duration?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "max_date_times": self.maxDateTimes?.encodeToJSON(), 
            "forbidden_id[]": self.forbiddenId, 
            "forbidden_uris[]": self.forbiddenUris, 
            "calendar": self.calendar, 
            "distance": self.distance?.encodeToJSON(), 
            "show_codes": self.showCodes, 
            "data_freshness": self.dataFreshness?.rawValue, 
            "items_per_schedule": self.itemsPerSchedule?.encodeToJSON(), 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: RouteSchedules?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<RouteSchedules>)) in
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

open class RouteSchedulesRequestBuilder: NSObject {
    let currentApi: RouteSchedulesAPI

    /**
    * enum for parameter dataFreshness
    */
    public enum DataFreshness_getRouteSchedules: String { 
        case baseSchedule = "base_schedule"
        case adaptedSchedule = "adapted_schedule"
        case realtime = "realtime"
    }
    var filter: String? = nil
    var fromDatetime: String? = nil
    var untilDatetime: String? = nil
    var duration: Int32? = nil
    var depth: Int32? = nil
    var count: Int32? = nil
    var startPage: Int32? = nil
    var maxDateTimes: Int32? = nil
    var forbiddenId: [String]? = nil
    var forbiddenUris: [String]? = nil
    var calendar: String? = nil
    var distance: Int32? = nil
    var showCodes: Bool? = nil
    var dataFreshness: DataFreshness_getRouteSchedules? = nil
    var itemsPerSchedule: Int32? = nil
    var disableGeojson: Bool? = nil

    public init(currentApi: RouteSchedulesAPI) {
        self.currentApi = currentApi
    }

    open func withFilter(_ filter: String) -> RouteSchedulesRequestBuilder {
        self.filter = filter
        return self
    }
    open func withFromDatetime(_ fromDatetime: String) -> RouteSchedulesRequestBuilder {
        self.fromDatetime = fromDatetime
        return self
    }
    open func withUntilDatetime(_ untilDatetime: String) -> RouteSchedulesRequestBuilder {
        self.untilDatetime = untilDatetime
        return self
    }
    open func withDuration(_ duration: Int32) -> RouteSchedulesRequestBuilder {
        self.duration = duration
        return self
    }
    open func withDepth(_ depth: Int32) -> RouteSchedulesRequestBuilder {
        self.depth = depth
        return self
    }
    open func withCount(_ count: Int32) -> RouteSchedulesRequestBuilder {
        self.count = count
        return self
    }
    open func withStartPage(_ startPage: Int32) -> RouteSchedulesRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withMaxDateTimes(_ maxDateTimes: Int32) -> RouteSchedulesRequestBuilder {
        self.maxDateTimes = maxDateTimes
        return self
    }
    open func withForbiddenId(_ forbiddenId: [String]) -> RouteSchedulesRequestBuilder {
        self.forbiddenId = forbiddenId
        return self
    }
    open func withForbiddenUris(_ forbiddenUris: [String]) -> RouteSchedulesRequestBuilder {
        self.forbiddenUris = forbiddenUris
        return self
    }
    open func withCalendar(_ calendar: String) -> RouteSchedulesRequestBuilder {
        self.calendar = calendar
        return self
    }
    open func withDistance(_ distance: Int32) -> RouteSchedulesRequestBuilder {
        self.distance = distance
        return self
    }
    open func withShowCodes(_ showCodes: Bool) -> RouteSchedulesRequestBuilder {
        self.showCodes = showCodes
        return self
    }
    open func withDataFreshness(_ dataFreshness: DataFreshness_getRouteSchedules) -> RouteSchedulesRequestBuilder {
        self.dataFreshness = dataFreshness
        return self
    }
    open func withDataFreshness(_ dataFreshnessValue: String) -> RouteSchedulesRequestBuilder {
        return withDataFreshness(DataFreshness_getRouteSchedules(rawValue: dataFreshnessValue)!);
    }
    open func withItemsPerSchedule(_ itemsPerSchedule: Int32) -> RouteSchedulesRequestBuilder {
        self.itemsPerSchedule = itemsPerSchedule
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> RouteSchedulesRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        let path = "/route_schedules"
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any] = [
            "filter": self.filter, 
            "from_datetime": self.fromDatetime, 
            "until_datetime": self.untilDatetime, 
            "duration": self.duration?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "max_date_times": self.maxDateTimes?.encodeToJSON(), 
            "forbidden_id[]": self.forbiddenId, 
            "forbidden_uris[]": self.forbiddenUris, 
            "calendar": self.calendar, 
            "distance": self.distance?.encodeToJSON(), 
            "show_codes": self.showCodes, 
            "data_freshness": self.dataFreshness?.rawValue, 
            "items_per_schedule": self.itemsPerSchedule?.encodeToJSON(), 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: RouteSchedules?,_ error: Error?) -> Void)) {

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<RouteSchedules>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    open func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {

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



open class RouteSchedulesAPI: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageLonLatUriRouteSchedulesRequestBuilder() -> CoverageLonLatUriRouteSchedulesRequestBuilder {
        return CoverageLonLatUriRouteSchedulesRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionUriRouteSchedulesRequestBuilder() -> CoverageRegionUriRouteSchedulesRequestBuilder {
        return CoverageRegionUriRouteSchedulesRequestBuilder(currentApi: self)
    }
    public func newRouteSchedulesRequestBuilder() -> RouteSchedulesRequestBuilder {
        return RouteSchedulesRequestBuilder(currentApi: self)
    }
}
