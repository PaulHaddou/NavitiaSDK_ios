//
// PtobjectsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class PtobjectsAPI {
    public enum ModelType_getCoverageLonLatPtObjects: String { 
        case network = "network"
        case commercialMode = "commercial_mode"
        case line = "line"
        case lineGroup = "line_group"
        case route = "route"
        case stopArea = "stop_area"
        case stopPoint = "stop_point"
    }


    open class func getCoverageLonLatPtObjects(q: String, lat: Double, lon: Double, type: [String]? = nil, count: Int? = nil, adminUri: [String]? = nil, depth: Int? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, completion: @escaping ((_ data: PtObjects?,_ error: Error?) -> Void)) {
        getCoverageLonLatPtObjectsWithRequestBuilder(q: q, lat: lat, lon: lon, type: type, count: count, adminUri: adminUri, depth: depth, disableGeojson: disableGeojson, disableDisruption: disableDisruption).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatPtObjectsWithRequestBuilder(q: String, lat: Double, lon: Double, type: [String]? = nil, count: Int? = nil, adminUri: [String]? = nil, depth: Int? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil) -> RequestBuilder<PtObjects> {
        var path = "/coverage/{lon};{lat}/pt_objects"
        let latPreEscape = "\(lat)"
        let latPostEscape = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        let lonPreEscape = "\(lon)"
        let lonPostEscape = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q": q, 
            "type[]": type, 
            "count": count?.encodeToJSON(), 
            "admin_uri[]": adminUri, 
            "depth": depth?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption
        ])

        let requestBuilder: RequestBuilder<PtObjects>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum ModelType_getCoverageRegionPtObjects: String { 
        case network = "network"
        case commercialMode = "commercial_mode"
        case line = "line"
        case lineGroup = "line_group"
        case route = "route"
        case stopArea = "stop_area"
        case stopPoint = "stop_point"
    }


    open class func getCoverageRegionPtObjects(q: String, region: String, type: [String]? = nil, count: Int? = nil, adminUri: [String]? = nil, depth: Int? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, completion: @escaping ((_ data: PtObjects?,_ error: Error?) -> Void)) {
        getCoverageRegionPtObjectsWithRequestBuilder(q: q, region: region, type: type, count: count, adminUri: adminUri, depth: depth, disableGeojson: disableGeojson, disableDisruption: disableDisruption).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionPtObjectsWithRequestBuilder(q: String, region: String, type: [String]? = nil, count: Int? = nil, adminUri: [String]? = nil, depth: Int? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil) -> RequestBuilder<PtObjects> {
        var path = "/coverage/{region}/pt_objects"
        let regionPreEscape = "\(region)"
        let regionPostEscape = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "q": q, 
            "type[]": type, 
            "count": count?.encodeToJSON(), 
            "admin_uri[]": adminUri, 
            "depth": depth?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption
        ])

        let requestBuilder: RequestBuilder<PtObjects>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

}