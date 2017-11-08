//
// PlacesNearbyApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import AlamofireObjectMapper


open class CoordLonLatPlacesNearbyRequestBuilder: NSObject {
    let currentApi: PlacesNearbyApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case stopPoint = "stop_point"
        case poi = "poi"
        case administrativeRegion = "administrative_region"
        case stopArea = "stop_area"
        case address = "address"
    }
    /**
    * enum for parameter addPoiInfos
    */
    public enum AddPoiInfos: String { 
        case bssStands = "bss_stands"
        case carPark = "car_park"
        case empty = ""
    }
    var lat:Double? = nil
    var lon:Double? = nil
    var type: [ModelType]? = nil
    var filter:String? = nil
    var distance:Int32? = nil
    var count:Int32? = nil
    var depth:Int32? = nil
    var startPage:Int32? = nil
    var bssStands:Bool? = nil
    var addPoiInfos: [AddPoiInfos]? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PlacesNearbyApi) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.lat = lat
        return self
    }
    open func withLon(_ lon: Double) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.lon = lon
        return self
    }
    open func withType(_ type: [ModelType]) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.type = type
        return self
    }
    open func withFilter(_ filter: String) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.filter = filter
        return self
    }
    open func withDistance(_ distance: Int32) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.distance = distance
        return self
    }
    open func withCount(_ count: Int32) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.count = count
        return self
    }
    open func withDepth(_ depth: Int32) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.depth = depth
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withBssStands(_ bssStands: Bool) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.bssStands = bssStands
        return self
    }
    open func withAddPoiInfos(_ addPoiInfos: [AddPoiInfos]) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.addPoiInfos = addPoiInfos
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoordLonLatPlacesNearbyRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coord/{lon};{lat}/places_nearby"
        path = path.replacingOccurrences(of: "{lat}", with: "\(self.lat!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{lon}", with: "\(self.lon!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "type[]": self.type, 
            "filter": self.filter, 
            "distance": self.distance?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "bss_stands": self.bssStands, 
            "add_poi_infos[]": self.addPoiInfos, 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PlacesNearby?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<PlacesNearby>)) in
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

open class CoordsLonLatPlacesNearbyRequestBuilder: NSObject {
    let currentApi: PlacesNearbyApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case stopPoint = "stop_point"
        case poi = "poi"
        case administrativeRegion = "administrative_region"
        case stopArea = "stop_area"
        case address = "address"
    }
    /**
    * enum for parameter addPoiInfos
    */
    public enum AddPoiInfos: String { 
        case bssStands = "bss_stands"
        case carPark = "car_park"
        case empty = ""
    }
    var lat:Double? = nil
    var lon:Double? = nil
    var type: [ModelType]? = nil
    var filter:String? = nil
    var distance:Int32? = nil
    var count:Int32? = nil
    var depth:Int32? = nil
    var startPage:Int32? = nil
    var bssStands:Bool? = nil
    var addPoiInfos: [AddPoiInfos]? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PlacesNearbyApi) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.lat = lat
        return self
    }
    open func withLon(_ lon: Double) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.lon = lon
        return self
    }
    open func withType(_ type: [ModelType]) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.type = type
        return self
    }
    open func withFilter(_ filter: String) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.filter = filter
        return self
    }
    open func withDistance(_ distance: Int32) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.distance = distance
        return self
    }
    open func withCount(_ count: Int32) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.count = count
        return self
    }
    open func withDepth(_ depth: Int32) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.depth = depth
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withBssStands(_ bssStands: Bool) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.bssStands = bssStands
        return self
    }
    open func withAddPoiInfos(_ addPoiInfos: [AddPoiInfos]) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.addPoiInfos = addPoiInfos
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoordsLonLatPlacesNearbyRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coords/{lon};{lat}/places_nearby"
        path = path.replacingOccurrences(of: "{lat}", with: "\(self.lat!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{lon}", with: "\(self.lon!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "type[]": self.type, 
            "filter": self.filter, 
            "distance": self.distance?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "bss_stands": self.bssStands, 
            "add_poi_infos[]": self.addPoiInfos, 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PlacesNearby?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<PlacesNearby>)) in
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

open class CoverageLonLatPlacesNearbyRequestBuilder: NSObject {
    let currentApi: PlacesNearbyApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case stopPoint = "stop_point"
        case poi = "poi"
        case administrativeRegion = "administrative_region"
        case stopArea = "stop_area"
        case address = "address"
    }
    /**
    * enum for parameter addPoiInfos
    */
    public enum AddPoiInfos: String { 
        case bssStands = "bss_stands"
        case carPark = "car_park"
        case empty = ""
    }
    var lat:Double? = nil
    var lon:Double? = nil
    var type: [ModelType]? = nil
    var filter:String? = nil
    var distance:Int32? = nil
    var count:Int32? = nil
    var depth:Int32? = nil
    var startPage:Int32? = nil
    var bssStands:Bool? = nil
    var addPoiInfos: [AddPoiInfos]? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PlacesNearbyApi) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.lat = lat
        return self
    }
    open func withLon(_ lon: Double) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.lon = lon
        return self
    }
    open func withType(_ type: [ModelType]) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.type = type
        return self
    }
    open func withFilter(_ filter: String) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.filter = filter
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.distance = distance
        return self
    }
    open func withCount(_ count: Int32) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.count = count
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.depth = depth
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withBssStands(_ bssStands: Bool) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.bssStands = bssStands
        return self
    }
    open func withAddPoiInfos(_ addPoiInfos: [AddPoiInfos]) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.addPoiInfos = addPoiInfos
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageLonLatPlacesNearbyRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/places_nearby"
        path = path.replacingOccurrences(of: "{lat}", with: "\(self.lat!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{lon}", with: "\(self.lon!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "type[]": self.type, 
            "filter": self.filter, 
            "distance": self.distance?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "bss_stands": self.bssStands, 
            "add_poi_infos[]": self.addPoiInfos, 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PlacesNearby?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<PlacesNearby>)) in
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

open class CoverageLonLatUriPlacesNearbyRequestBuilder: NSObject {
    let currentApi: PlacesNearbyApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case stopPoint = "stop_point"
        case poi = "poi"
        case administrativeRegion = "administrative_region"
        case stopArea = "stop_area"
        case address = "address"
    }
    /**
    * enum for parameter addPoiInfos
    */
    public enum AddPoiInfos: String { 
        case bssStands = "bss_stands"
        case carPark = "car_park"
        case empty = ""
    }
    var lat:Double? = nil
    var lon:Double? = nil
    var uri:String? = nil
    var type: [ModelType]? = nil
    var filter:String? = nil
    var distance:Int32? = nil
    var count:Int32? = nil
    var depth:Int32? = nil
    var startPage:Int32? = nil
    var bssStands:Bool? = nil
    var addPoiInfos: [AddPoiInfos]? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PlacesNearbyApi) {
        self.currentApi = currentApi
    }

    open func withLat(_ lat: Double) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.lat = lat
        return self
    }
    open func withLon(_ lon: Double) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.lon = lon
        return self
    }
    open func withUri(_ uri: String) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.uri = uri
        return self
    }
    open func withType(_ type: [ModelType]) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.type = type
        return self
    }
    open func withFilter(_ filter: String) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.filter = filter
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.distance = distance
        return self
    }
    open func withCount(_ count: Int32) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.count = count
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.depth = depth
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withBssStands(_ bssStands: Bool) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.bssStands = bssStands
        return self
    }
    open func withAddPoiInfos(_ addPoiInfos: [AddPoiInfos]) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.addPoiInfos = addPoiInfos
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/{uri}/places_nearby"
        path = path.replacingOccurrences(of: "{lat}", with: "\(self.lat!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{lon}", with: "\(self.lon!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{uri}", with: "\(self.uri!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "type[]": self.type, 
            "filter": self.filter, 
            "distance": self.distance?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "bss_stands": self.bssStands, 
            "add_poi_infos[]": self.addPoiInfos, 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PlacesNearby?,_ error: Error?) -> Void)) {
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
            .responseObject{ (response: (DataResponse<PlacesNearby>)) in
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

open class CoverageRegionPlacesNearbyRequestBuilder: NSObject {
    let currentApi: PlacesNearbyApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case stopPoint = "stop_point"
        case poi = "poi"
        case administrativeRegion = "administrative_region"
        case stopArea = "stop_area"
        case address = "address"
    }
    /**
    * enum for parameter addPoiInfos
    */
    public enum AddPoiInfos: String { 
        case bssStands = "bss_stands"
        case carPark = "car_park"
        case empty = ""
    }
    var region:String? = nil
    var type: [ModelType]? = nil
    var filter:String? = nil
    var distance:Int32? = nil
    var count:Int32? = nil
    var depth:Int32? = nil
    var startPage:Int32? = nil
    var bssStands:Bool? = nil
    var addPoiInfos: [AddPoiInfos]? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PlacesNearbyApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.region = region
        return self
    }
    open func withType(_ type: [ModelType]) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.type = type
        return self
    }
    open func withFilter(_ filter: String) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.filter = filter
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.distance = distance
        return self
    }
    open func withCount(_ count: Int32) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.count = count
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.depth = depth
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withBssStands(_ bssStands: Bool) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.bssStands = bssStands
        return self
    }
    open func withAddPoiInfos(_ addPoiInfos: [AddPoiInfos]) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.addPoiInfos = addPoiInfos
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageRegionPlacesNearbyRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/places_nearby"
        path = path.replacingOccurrences(of: "{region}", with: "\(self.region!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "type[]": self.type, 
            "filter": self.filter, 
            "distance": self.distance?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "bss_stands": self.bssStands, 
            "add_poi_infos[]": self.addPoiInfos, 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PlacesNearby?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<PlacesNearby>)) in
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

open class CoverageRegionUriPlacesNearbyRequestBuilder: NSObject {
    let currentApi: PlacesNearbyApi

    /**
    * enum for parameter type
    */
    public enum ModelType: String { 
        case stopPoint = "stop_point"
        case poi = "poi"
        case administrativeRegion = "administrative_region"
        case stopArea = "stop_area"
        case address = "address"
    }
    /**
    * enum for parameter addPoiInfos
    */
    public enum AddPoiInfos: String { 
        case bssStands = "bss_stands"
        case carPark = "car_park"
        case empty = ""
    }
    var region:String? = nil
    var uri:String? = nil
    var type: [ModelType]? = nil
    var filter:String? = nil
    var distance:Int32? = nil
    var count:Int32? = nil
    var depth:Int32? = nil
    var startPage:Int32? = nil
    var bssStands:Bool? = nil
    var addPoiInfos: [AddPoiInfos]? = nil
    var disableGeojson:Bool? = nil

    public init(currentApi: PlacesNearbyApi) {
        self.currentApi = currentApi
    }

    open func withRegion(_ region: String) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.region = region
        return self
    }
    open func withUri(_ uri: String) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.uri = uri
        return self
    }
    open func withType(_ type: [ModelType]) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.type = type
        return self
    }
    open func withFilter(_ filter: String) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.filter = filter
        return self
    }
    open func withDistance(_ distance: Int32) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.distance = distance
        return self
    }
    open func withCount(_ count: Int32) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.count = count
        return self
    }
    open func withDepth(_ depth: Int32) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.depth = depth
        return self
    }
    open func withStartPage(_ startPage: Int32) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.startPage = startPage
        return self
    }
    open func withBssStands(_ bssStands: Bool) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.bssStands = bssStands
        return self
    }
    open func withAddPoiInfos(_ addPoiInfos: [AddPoiInfos]) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.addPoiInfos = addPoiInfos
        return self
    }
    open func withDisableGeojson(_ disableGeojson: Bool) -> CoverageRegionUriPlacesNearbyRequestBuilder {
        self.disableGeojson = disableGeojson
        return self
    }

    open func makeUrl() -> String {
        var path = "/coverage/{region}/{uri}/places_nearby"
        path = path.replacingOccurrences(of: "{region}", with: "\(self.region!)", options: .literal, range: nil)
        path = path.replacingOccurrences(of: "{uri}", with: "\(self.uri!)", options: .literal, range: nil)
        let URLString = "https://api.navitia.io/v1" + path
        let url = NSURLComponents(string: URLString)

        let paramValues: [String: Any?] = [
            "type[]": self.type, 
            "filter": self.filter, 
            "distance": self.distance?.encodeToJSON(), 
            "count": self.count?.encodeToJSON(), 
            "depth": self.depth?.encodeToJSON(), 
            "start_page": self.startPage?.encodeToJSON(), 
            "bss_stands": self.bssStands, 
            "add_poi_infos[]": self.addPoiInfos, 
            "disable_geojson": self.disableGeojson
        ]
        url?.queryItems = APIHelper.mapValuesToQueryItems(values: paramValues)

        return (url?.string ?? URLString)
    }

    open func get(completion: @escaping ((_ data: PlacesNearby?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        Alamofire.request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<PlacesNearby>)) in
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



open class PlacesNearbyApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoordLonLatPlacesNearbyRequestBuilder() -> CoordLonLatPlacesNearbyRequestBuilder {
        return CoordLonLatPlacesNearbyRequestBuilder(currentApi: self)
    }
    public func newCoordsLonLatPlacesNearbyRequestBuilder() -> CoordsLonLatPlacesNearbyRequestBuilder {
        return CoordsLonLatPlacesNearbyRequestBuilder(currentApi: self)
    }
    public func newCoverageLonLatPlacesNearbyRequestBuilder() -> CoverageLonLatPlacesNearbyRequestBuilder {
        return CoverageLonLatPlacesNearbyRequestBuilder(currentApi: self)
    }
    public func newCoverageLonLatUriPlacesNearbyRequestBuilder() -> CoverageLonLatUriPlacesNearbyRequestBuilder {
        return CoverageLonLatUriPlacesNearbyRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionPlacesNearbyRequestBuilder() -> CoverageRegionPlacesNearbyRequestBuilder {
        return CoverageRegionPlacesNearbyRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionUriPlacesNearbyRequestBuilder() -> CoverageRegionUriPlacesNearbyRequestBuilder {
        return CoverageRegionUriPlacesNearbyRequestBuilder(currentApi: self)
    }
}