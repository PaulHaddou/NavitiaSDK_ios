//
// RoutesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class RoutesAPI {
    public enum OdtLevel_getCoverageLonLatRoutes: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatRoutes(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageLonLatRoutesWithRequestBuilder(lat: lat, lon: lon, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatRoutesWithRequestBuilder(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{lon};{lat}/routes"
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
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "filter": filter, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatRoutesId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatRoutesId(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageLonLatRoutesIdWithRequestBuilder(lat: lat, lon: lon, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatRoutesIdWithRequestBuilder(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{lon};{lat}/routes/{id}"
        let latPreEscape = "\(lat)"
        let latPostEscape = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        let lonPreEscape = "\(lon)"
        let lonPostEscape = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriRoutes: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriRoutes(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriRoutesWithRequestBuilder(lat: lat, lon: lon, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriRoutesWithRequestBuilder(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{lon};{lat}/{uri}/routes"
        let latPreEscape = "\(lat)"
        let latPostEscape = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        let lonPreEscape = "\(lon)"
        let lonPostEscape = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        let uriPreEscape = "\(uri)"
        let uriPostEscape = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "filter": filter, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriRoutesId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriRoutesId(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriRoutesIdWithRequestBuilder(lat: lat, lon: lon, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriRoutesIdWithRequestBuilder(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{lon};{lat}/{uri}/routes/{id}"
        let latPreEscape = "\(lat)"
        let latPostEscape = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        let lonPreEscape = "\(lon)"
        let lonPostEscape = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        let uriPreEscape = "\(uri)"
        let uriPostEscape = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionRoutes: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionRoutes(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageRegionRoutesWithRequestBuilder(region: region, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionRoutesWithRequestBuilder(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{region}/routes"
        let regionPreEscape = "\(region)"
        let regionPostEscape = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "filter": filter, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionRoutesId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionRoutesId(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageRegionRoutesIdWithRequestBuilder(region: region, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionRoutesIdWithRequestBuilder(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{region}/routes/{id}"
        let regionPreEscape = "\(region)"
        let regionPostEscape = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriRoutes: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriRoutes(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageRegionUriRoutesWithRequestBuilder(region: region, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriRoutesWithRequestBuilder(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{region}/{uri}/routes"
        let regionPreEscape = "\(region)"
        let regionPostEscape = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        let uriPreEscape = "\(uri)"
        let uriPostEscape = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "filter": filter, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriRoutesId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriRoutesId(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getCoverageRegionUriRoutesIdWithRequestBuilder(region: region, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriRoutesIdWithRequestBuilder(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriRoutesId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        var path = "/coverage/{region}/{uri}/routes/{id}"
        let regionPreEscape = "\(region)"
        let regionPostEscape = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        let uriPreEscape = "\(uri)"
        let uriPostEscape = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getRoutes: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getRoutes(externalCode: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Routes?,_ error: Error?) -> Void)) {
        getRoutesWithRequestBuilder(externalCode: externalCode, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getRoutesWithRequestBuilder(externalCode: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getRoutes? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Routes> {
        let path = "/routes"
        let URLString = NavitiaSDK.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "start_page": startPage?.encodeToJSON(), 
            "count": count?.encodeToJSON(), 
            "depth": depth?.encodeToJSON(), 
            "forbidden_id[]": forbiddenId, 
            "forbidden_uris[]": forbiddenUris, 
            "external_code": externalCode, 
            "headsign": headsign, 
            "show_codes": showCodes, 
            "odt_level": odtLevel?.rawValue, 
            "distance": distance?.encodeToJSON(), 
            "since": since?.encodeToJSON(), 
            "until": until?.encodeToJSON(), 
            "disable_geojson": disableGeojson, 
            "disable_disruption": disableDisruption, 
            "filter": filter, 
            "tags[]": tags, 
            "original_id": originalId
        ])

        let requestBuilder: RequestBuilder<Routes>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

}