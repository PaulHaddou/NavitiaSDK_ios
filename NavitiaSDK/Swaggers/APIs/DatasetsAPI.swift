//
// DatasetsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DatasetsAPI {
    public enum OdtLevel_getCoverageLonLatDatasets: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatDatasets(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageLonLatDatasetsWithRequestBuilder(lat: lat, lon: lon, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatDatasetsWithRequestBuilder(lat: Double, lon: Double, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{lon};{lat}/datasets"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatDatasetsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatDatasetsId(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageLonLatDatasetsIdWithRequestBuilder(lat: lat, lon: lon, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatDatasetsIdWithRequestBuilder(lat: Double, lon: Double, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{lon};{lat}/datasets/{id}"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriDatasets: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriDatasets(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriDatasetsWithRequestBuilder(lat: lat, lon: lon, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriDatasetsWithRequestBuilder(lat: Double, lon: Double, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{lon};{lat}/{uri}/datasets"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageLonLatUriDatasetsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageLonLatUriDatasetsId(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageLonLatUriDatasetsIdWithRequestBuilder(lat: lat, lon: lon, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageLonLatUriDatasetsIdWithRequestBuilder(lat: Double, lon: Double, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageLonLatUriDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{lon};{lat}/{uri}/datasets/{id}"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionDatasets: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionDatasets(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageRegionDatasetsWithRequestBuilder(region: region, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionDatasetsWithRequestBuilder(region: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{region}/datasets"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionDatasetsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionDatasetsId(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageRegionDatasetsIdWithRequestBuilder(region: region, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionDatasetsIdWithRequestBuilder(region: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{region}/datasets/{id}"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriDatasets: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriDatasets(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageRegionUriDatasetsWithRequestBuilder(region: region, uri: uri, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, filter: filter, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriDatasetsWithRequestBuilder(region: String, uri: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDatasets? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, filter: String? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{region}/{uri}/datasets"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

    public enum OdtLevel_getCoverageRegionUriDatasetsId: String { 
        case scheduled = "scheduled"
        case all = "all"
        case zonal = "zonal"
        case withStops = "with_stops"
    }


    open class func getCoverageRegionUriDatasetsId(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil, completion: @escaping ((_ data: Datasets?,_ error: Error?) -> Void)) {
        getCoverageRegionUriDatasetsIdWithRequestBuilder(region: region, uri: uri, _id: _id, startPage: startPage, count: count, depth: depth, forbiddenId: forbiddenId, forbiddenUris: forbiddenUris, externalCode: externalCode, headsign: headsign, showCodes: showCodes, odtLevel: odtLevel, distance: distance, since: since, until: until, disableGeojson: disableGeojson, disableDisruption: disableDisruption, tags: tags).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    open class func getCoverageRegionUriDatasetsIdWithRequestBuilder(region: String, uri: String, _id: String, startPage: Int? = nil, count: Int? = nil, depth: Int? = nil, forbiddenId: [String]? = nil, forbiddenUris: [String]? = nil, externalCode: String? = nil, headsign: String? = nil, showCodes: Bool? = nil, odtLevel: OdtLevel_getCoverageRegionUriDatasetsId? = nil, distance: Int? = nil, since: Date? = nil, until: Date? = nil, disableGeojson: Bool? = nil, disableDisruption: Bool? = nil, tags: [String]? = nil) -> RequestBuilder<Datasets> {
        var path = "/coverage/{region}/{uri}/datasets/{id}"
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

        let requestBuilder: RequestBuilder<Datasets>.Type = NavitiaSDK.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false).addCredential()
    }

}