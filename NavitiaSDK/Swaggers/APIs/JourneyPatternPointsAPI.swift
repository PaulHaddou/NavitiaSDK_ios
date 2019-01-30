//
// JourneyPatternPointsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class JourneyPatternPointsAPI {
    public enum OdtLevel_getCoverageLonLatJourneyPatternPoints: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatJourneyPatternPoints(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageLonLatJourneyPatternPointsWithRequestBuilder(lat: lat, lon: lon, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatJourneyPatternPointsWithRequestBuilder(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{lon};{lat}/journey_pattern_points"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatJourneyPatternPointsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatJourneyPatternPointsId(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageLonLatJourneyPatternPointsIdWithRequestBuilder(lat: lat, lon: lon, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatJourneyPatternPointsIdWithRequestBuilder(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{lon};{lat}/journey_pattern_points/{id}"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriJourneyPatternPoints: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriJourneyPatternPoints(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriJourneyPatternPointsWithRequestBuilder(lat: lat, lon: lon, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriJourneyPatternPointsWithRequestBuilder(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{lon};{lat}/{uri}/journey_pattern_points"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriJourneyPatternPointsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriJourneyPatternPointsId(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriJourneyPatternPointsIdWithRequestBuilder(lat: lat, lon: lon, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriJourneyPatternPointsIdWithRequestBuilder(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{lon};{lat}/{uri}/journey_pattern_points/{id}"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionJourneyPatternPoints: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionJourneyPatternPoints(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageRegionJourneyPatternPointsWithRequestBuilder(region: region, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionJourneyPatternPointsWithRequestBuilder(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{region}/journey_pattern_points"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionJourneyPatternPointsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionJourneyPatternPointsId(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageRegionJourneyPatternPointsIdWithRequestBuilder(region: region, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionJourneyPatternPointsIdWithRequestBuilder(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{region}/journey_pattern_points/{id}"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriJourneyPatternPoints: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriJourneyPatternPoints(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageRegionUriJourneyPatternPointsWithRequestBuilder(region: region, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriJourneyPatternPointsWithRequestBuilder(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriJourneyPatternPoints? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{region}/{uri}/journey_pattern_points"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriJourneyPatternPointsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriJourneyPatternPointsId(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: JourneyPatternPoints?,_ error: Error?) -> Void)) {
        getCoverageRegionUriJourneyPatternPointsIdWithRequestBuilder(region: region, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriJourneyPatternPointsIdWithRequestBuilder(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriJourneyPatternPointsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<JourneyPatternPoints> {
        var path = "/coverage/{region}/{uri}/journey_pattern_points/{id}"
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
            "tags[]": tags
        ])

        let requestBuilder: RequestBuilder<JourneyPatternPoints>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

}
