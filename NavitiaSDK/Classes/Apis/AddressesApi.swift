//
// AddressesApi.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CoverageLonLatAddressesRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var lat:Double? = nil
    var lon:Double? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withLat(_ lat: Double?) -> CoverageLonLatAddressesRequestBuilder {
        self.lat = lat
        
        return self
    }
    public func withLon(_ lon: Double?) -> CoverageLonLatAddressesRequestBuilder {
        self.lon = lon
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageLonLatAddressesRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/addresses"

        if let lat = lat {
            let latPreEscape: String = "\(lat)"
            let latPostEscape: String = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        }

        if let lon = lon {
            let lonPreEscape: String = "\(lon)"
            let lonPostEscape: String = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.lat == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
    }
    if (self.lon == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
    }

    request(self.makeUrl())
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

public class CoverageLonLatAddressesIdRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var lat:Double? = nil
    var lon:Double? = nil
    var id:String? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withLat(_ lat: Double?) -> CoverageLonLatAddressesIdRequestBuilder {
        self.lat = lat
        
        return self
    }
    public func withLon(_ lon: Double?) -> CoverageLonLatAddressesIdRequestBuilder {
        self.lon = lon
        
        return self
    }
    public func withId(_ id: String?) -> CoverageLonLatAddressesIdRequestBuilder {
        self.id = id
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageLonLatAddressesIdRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/addresses/{id}"

        if let lat = lat {
            let latPreEscape: String = "\(lat)"
            let latPostEscape: String = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        }

        if let lon = lon {
            let lonPreEscape: String = "\(lon)"
            let lonPostEscape: String = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        }

        if let id = id {
            let idPreEscape: String = "\(id)"
            let idPostEscape: String = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }
        if (self.id == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.lat == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
    }
    if (self.lon == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
    }
    if (self.id == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
    }

    request(self.makeUrl())
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

public class CoverageLonLatUriAddressesRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var lat:Double? = nil
    var lon:Double? = nil
    var uri:String? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withLat(_ lat: Double?) -> CoverageLonLatUriAddressesRequestBuilder {
        self.lat = lat
        
        return self
    }
    public func withLon(_ lon: Double?) -> CoverageLonLatUriAddressesRequestBuilder {
        self.lon = lon
        
        return self
    }
    public func withUri(_ uri: String?) -> CoverageLonLatUriAddressesRequestBuilder {
        self.uri = uri
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageLonLatUriAddressesRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/{uri}/addresses"

        if let lat = lat {
            let latPreEscape: String = "\(lat)"
            let latPostEscape: String = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        }

        if let lon = lon {
            let lonPreEscape: String = "\(lon)"
            let lonPostEscape: String = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        }

        if let uri = uri {
            let uriPreEscape: String = "\(uri)"
            let uriPostEscape: String = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.lat == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
    }
    if (self.lon == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
    }
    if (self.uri == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
    }

    request(self.makeUrl())
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

public class CoverageLonLatUriAddressesIdRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var lat:Double? = nil
    var lon:Double? = nil
    var uri:String? = nil
    var id:String? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withLat(_ lat: Double?) -> CoverageLonLatUriAddressesIdRequestBuilder {
        self.lat = lat
        
        return self
    }
    public func withLon(_ lon: Double?) -> CoverageLonLatUriAddressesIdRequestBuilder {
        self.lon = lon
        
        return self
    }
    public func withUri(_ uri: String?) -> CoverageLonLatUriAddressesIdRequestBuilder {
        self.uri = uri
        
        return self
    }
    public func withId(_ id: String?) -> CoverageLonLatUriAddressesIdRequestBuilder {
        self.id = id
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageLonLatUriAddressesIdRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{lon};{lat}/{uri}/addresses/{id}"

        if let lat = lat {
            let latPreEscape: String = "\(lat)"
            let latPostEscape: String = latPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lat}", with: latPostEscape, options: .literal, range: nil)
        }

        if let lon = lon {
            let lonPreEscape: String = "\(lon)"
            let lonPostEscape: String = lonPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{lon}", with: lonPostEscape, options: .literal, range: nil)
        }

        if let uri = uri {
            let uriPreEscape: String = "\(uri)"
            let uriPostEscape: String = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        }

        if let id = id {
            let idPreEscape: String = "\(id)"
            let idPostEscape: String = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.lat == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
        }
        if (self.lon == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }
        if (self.id == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.lat == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lat"])))
    }
    if (self.lon == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : lon"])))
    }
    if (self.uri == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
    }
    if (self.id == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
    }

    request(self.makeUrl())
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

public class CoverageRegionAddressesRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var region:String? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withRegion(_ region: String?) -> CoverageRegionAddressesRequestBuilder {
        self.region = region
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageRegionAddressesRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{region}/addresses"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.region == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
    }

    request(self.makeUrl())
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

public class CoverageRegionAddressesIdRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var region:String? = nil
    var id:String? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withRegion(_ region: String?) -> CoverageRegionAddressesIdRequestBuilder {
        self.region = region
        
        return self
    }
    public func withId(_ id: String?) -> CoverageRegionAddressesIdRequestBuilder {
        self.id = id
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageRegionAddressesIdRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{region}/addresses/{id}"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        if let id = id {
            let idPreEscape: String = "\(id)"
            let idPostEscape: String = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.id == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.region == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
    }
    if (self.id == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
    }

    request(self.makeUrl())
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

public class CoverageRegionUriAddressesRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var region:String? = nil
    var uri:String? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withRegion(_ region: String?) -> CoverageRegionUriAddressesRequestBuilder {
        self.region = region
        
        return self
    }
    public func withUri(_ uri: String?) -> CoverageRegionUriAddressesRequestBuilder {
        self.uri = uri
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageRegionUriAddressesRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{region}/{uri}/addresses"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        if let uri = uri {
            let uriPreEscape: String = "\(uri)"
            let uriPostEscape: String = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.region == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
    }
    if (self.uri == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
    }

    request(self.makeUrl())
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

public class CoverageRegionUriAddressesIdRequestBuilder: NSObject {
    let currentApi: AddressesApi

    var region:String? = nil
    var uri:String? = nil
    var id:String? = nil
    var debugURL: String? = nil

    public init(currentApi: AddressesApi) {
        self.currentApi = currentApi
    }

    public func withRegion(_ region: String?) -> CoverageRegionUriAddressesIdRequestBuilder {
        self.region = region
        
        return self
    }
    public func withUri(_ uri: String?) -> CoverageRegionUriAddressesIdRequestBuilder {
        self.uri = uri
        
        return self
    }
    public func withId(_ id: String?) -> CoverageRegionUriAddressesIdRequestBuilder {
        self.id = id
        
        return self
    }



    public func withDebugURL(_ debugURL: String?) -> CoverageRegionUriAddressesIdRequestBuilder {
        self.debugURL = debugURL
        return self
    }

    public func makeUrl() -> String {
        var path = "/coverage/{region}/{uri}/addresses/{id}"

        if let region = region {
            let regionPreEscape: String = "\(region)"
            let regionPostEscape: String = regionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{region}", with: regionPostEscape, options: .literal, range: nil)
        }

        if let uri = uri {
            let uriPreEscape: String = "\(uri)"
            let uriPostEscape: String = uriPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{uri}", with: uriPostEscape, options: .literal, range: nil)
        }

        if let id = id {
            let idPreEscape: String = "\(id)"
            let idPostEscape: String = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
            path = path.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        }

        let URLString = String(format: "%@%@", NavitiaSDKAPI.basePath, path)
        let url = NSURLComponents(string: URLString)


        return (debugURL ?? url?.string ?? URLString)
    }

    public func get(completion: @escaping ((_ data: DictAddresses?,_ error: Error?) -> Void)) {
        if (self.region == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
        }
        if (self.uri == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
        }
        if (self.id == nil) {
            completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
        }

        request(self.makeUrl())
            .authenticate(user: currentApi.token, password: "")
            .validate()
            .responseObject{ (response: (DataResponse<DictAddresses>)) in
                switch response.result {
                case .success:
                    completion(response.result.value, nil)
                case .failure(let error):
                    completion(nil, error)
                }
            }
    }

    public func rawGet(completion: @escaping ((_ data: String?,_ error: Error?) -> Void)) {
    if (self.region == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : region"])))
    }
    if (self.uri == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : uri"])))
    }
    if (self.id == nil) {
        completion(nil, ErrorResponse.Error(500, nil, NSError(domain: "localhost", code: 500, userInfo: ["reason": "Missing mandatory argument : id"])))
    }

    request(self.makeUrl())
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



public class AddressesApi: APIBase {
    let token: String

    public init(token: String) {
        self.token = token
    }

    public func newCoverageLonLatAddressesRequestBuilder() -> CoverageLonLatAddressesRequestBuilder {
        return CoverageLonLatAddressesRequestBuilder(currentApi: self)
    }
    public func newCoverageLonLatAddressesIdRequestBuilder() -> CoverageLonLatAddressesIdRequestBuilder {
        return CoverageLonLatAddressesIdRequestBuilder(currentApi: self)
    }
    public func newCoverageLonLatUriAddressesRequestBuilder() -> CoverageLonLatUriAddressesRequestBuilder {
        return CoverageLonLatUriAddressesRequestBuilder(currentApi: self)
    }
    public func newCoverageLonLatUriAddressesIdRequestBuilder() -> CoverageLonLatUriAddressesIdRequestBuilder {
        return CoverageLonLatUriAddressesIdRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionAddressesRequestBuilder() -> CoverageRegionAddressesRequestBuilder {
        return CoverageRegionAddressesRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionAddressesIdRequestBuilder() -> CoverageRegionAddressesIdRequestBuilder {
        return CoverageRegionAddressesIdRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionUriAddressesRequestBuilder() -> CoverageRegionUriAddressesRequestBuilder {
        return CoverageRegionUriAddressesRequestBuilder(currentApi: self)
    }
    public func newCoverageRegionUriAddressesIdRequestBuilder() -> CoverageRegionUriAddressesIdRequestBuilder {
        return CoverageRegionUriAddressesIdRequestBuilder(currentApi: self)
    }
}
