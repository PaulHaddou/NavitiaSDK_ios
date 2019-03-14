//
// LineGroupsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class LineGroupsAPI {
    public enum OdtLevel_getCoverageLonLatLineGroups: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatLineGroups(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageLonLatLineGroupsWithRequestBuilder(lat: lat, lon: lon, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatLineGroupsWithRequestBuilder(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{lon};{lat}/line_groups"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatLineGroupsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatLineGroupsId(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageLonLatLineGroupsIdWithRequestBuilder(lat: lat, lon: lon, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatLineGroupsIdWithRequestBuilder(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{lon};{lat}/line_groups/{id}"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriLineGroups: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriLineGroups(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriLineGroupsWithRequestBuilder(lat: lat, lon: lon, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriLineGroupsWithRequestBuilder(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{lon};{lat}/{uri}/line_groups"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriLineGroupsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriLineGroupsId(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriLineGroupsIdWithRequestBuilder(lat: lat, lon: lon, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriLineGroupsIdWithRequestBuilder(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{lon};{lat}/{uri}/line_groups/{id}"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionLineGroups: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionLineGroups(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageRegionLineGroupsWithRequestBuilder(region: region, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionLineGroupsWithRequestBuilder(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{region}/line_groups"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionLineGroupsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionLineGroupsId(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageRegionLineGroupsIdWithRequestBuilder(region: region, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionLineGroupsIdWithRequestBuilder(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{region}/line_groups/{id}"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriLineGroups: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriLineGroups(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageRegionUriLineGroupsWithRequestBuilder(region: region, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriLineGroupsWithRequestBuilder(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{region}/{uri}/line_groups"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriLineGroupsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriLineGroupsId(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getCoverageRegionUriLineGroupsIdWithRequestBuilder(region: region, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriLineGroupsIdWithRequestBuilder(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriLineGroupsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        var path = "/coverage/{region}/{uri}/line_groups/{id}"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getLineGroups: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getLineGroups(externalCode: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil, completion: @escaping ((_ data: LineGroups?,_ error: Error?) -> Void)) {
        getLineGroupsWithRequestBuilder(externalCode: externalCode, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags, originalId: originalId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getLineGroupsWithRequestBuilder(externalCode: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getLineGroups? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, originalId: String? = nil) -> RequestBuilder<LineGroups> {
        let path = "/line_groups"
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

        let requestBuilder: RequestBuilder<LineGroups>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

}