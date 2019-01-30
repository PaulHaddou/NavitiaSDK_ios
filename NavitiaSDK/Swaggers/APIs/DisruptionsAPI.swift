//
// DisruptionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DisruptionsAPI {
    public enum OdtLevel_getCoverageLonLatDisruptions: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatDisruptions(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageLonLatDisruptionsWithRequestBuilder(lat: lat, lon: lon, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatDisruptionsWithRequestBuilder(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{lon};{lat}/disruptions"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatDisruptionsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatDisruptionsId(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageLonLatDisruptionsIdWithRequestBuilder(lat: lat, lon: lon, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatDisruptionsIdWithRequestBuilder(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{lon};{lat}/disruptions/{id}"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriDisruptions: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriDisruptions(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriDisruptionsWithRequestBuilder(lat: lat, lon: lon, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriDisruptionsWithRequestBuilder(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{lon};{lat}/{uri}/disruptions"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriDisruptionsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriDisruptionsId(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriDisruptionsIdWithRequestBuilder(lat: lat, lon: lon, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriDisruptionsIdWithRequestBuilder(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{lon};{lat}/{uri}/disruptions/{id}"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionDisruptions: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionDisruptions(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageRegionDisruptionsWithRequestBuilder(region: region, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionDisruptionsWithRequestBuilder(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{region}/disruptions"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionDisruptionsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionDisruptionsId(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageRegionDisruptionsIdWithRequestBuilder(region: region, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionDisruptionsIdWithRequestBuilder(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{region}/disruptions/{id}"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriDisruptions: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriDisruptions(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageRegionUriDisruptionsWithRequestBuilder(region: region, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriDisruptionsWithRequestBuilder(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDisruptions? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{region}/{uri}/disruptions"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriDisruptionsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriDisruptionsId(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: Disruptions?,_ error: Error?) -> Void)) {
        getCoverageRegionUriDisruptionsIdWithRequestBuilder(region: region, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriDisruptionsIdWithRequestBuilder(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDisruptionsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<Disruptions> {
        var path = "/coverage/{region}/{uri}/disruptions/{id}"
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

        let requestBuilder: RequestBuilder<Disruptions>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

}
