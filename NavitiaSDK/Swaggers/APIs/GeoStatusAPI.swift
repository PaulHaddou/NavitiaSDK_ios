//
// GeoStatusAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class GeoStatusAPI {

    open class func getCoverageLonLatGeoStatus(lat: Double, lon: Double, completion: @escaping ((_ data: GeoStatus1?,_ error: Error?) -> Void)) {
        getCoverageLonLatGeoStatusWithRequestBuilder(lat: lat, lon: lon).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatGeoStatusWithRequestBuilder(lat: Double, lon: Double) -> RequestBuilder<GeoStatus1> {
        var path = "/coverage/{lon};{lat}/_geo_status"
        let latPreEscape = "\(lat)"
        let latPostEscape = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        let lonPreEscape = "\(lon)"
        let lonPostEscape = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GeoStatus1>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }


    open class func getCoverageRegionGeoStatus(region: String, completion: @escaping ((_ data: GeoStatus1?,_ error: Error?) -> Void)) {
        getCoverageRegionGeoStatusWithRequestBuilder(region: region).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionGeoStatusWithRequestBuilder(region: String) -> RequestBuilder<GeoStatus1> {
        var path = "/coverage/{region}/_geo_status"
        let regionPreEscape = "\(region)"
        let regionPostEscape = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<GeoStatus1>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

}
