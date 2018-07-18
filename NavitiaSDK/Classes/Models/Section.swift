//
// Section.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation

open class Section: JSONEncodable, Mappable {

    public enum TransferType: String { 
        case walking = "walking"
        case stayIn = "stay_in"
    }
    public enum AdditionalInformations: String { 
        case odtWithZone = "odt_with_zone"
        case odtWithStopPoint = "odt_with_stop_point"
        case odtWithStopTime = "odt_with_stop_time"
        case hasDatetimeEstimated = "has_datetime_estimated"
        case regular = "regular"
        case stayIn = "stay_in"
    }
    public enum ModelType: String { 
        case publicTransport = "public_transport"
        case streetNetwork = "street_network"
        case waiting = "waiting"
        case transfer = "transfer"
        case boarding = "boarding"
        case landing = "landing"
        case bssRent = "bss_rent"
        case bssPutBack = "bss_put_back"
        case crowFly = "crow_fly"
        case park = "park"
        case leaveParking = "leave_parking"
        case alighting = "alighting"
        case ridesharing = "ridesharing"
        case onDemandTransport = "on_demand_transport"
    }
    public enum DataFreshness: String { 
        case baseSchedule = "base_schedule"
        case adaptedSchedule = "adapted_schedule"
        case realtime = "realtime"
    }
    public enum Mode: String { 
        case walking = "walking"
        case bike = "bike"
        case car = "car"
        case bss = "bss"
        case ridesharing = "ridesharing"
        case carnopark = "carnopark"
    }
    public var displayInformations: VJDisplayInformation?
    public var from: Place?
    public var links: [LinkSchema]?
    public var transferType: TransferType?
    /** Arrival date and time of the section */
    public var arrivalDateTime: String?
    public var additionalInformations: [AdditionalInformations]?
    /** Departure date and time of the section */
    public var departureDateTime: String?
    public var ridesharingInformations: RidesharingInformation?
    public var to: Place?
    /** Base-schedule arrival date and time of the section */
    public var baseArrivalDateTime: String?
    /** Base-schedule departure date and time of the section */
    public var baseDepartureDateTime: String?
    public var co2Emission: Amount?
    public var ridesharingJourneys: [Journey]?
    /** GeoJSON of the shape of the section */
    public var geojson: SectionGeoJsonSchema?
    /** Duration of the section (seconds) */
    public var duration: Int32?
    public var path: [Path]?
    public var stopDateTimes: [StopDateTime]?
    public var type: ModelType?
    public var id: String?
    public var dataFreshness: DataFreshness?
    public var mode: Mode?

    public init() {}
    required public init?(map: Map) {

    }


    public func mapping(map: Map) {
        displayInformations <- map["display_informations"]
        from <- map["from"]
        links <- map["links"]
        transferType <- map["transfer_type"]
        arrivalDateTime <- map["arrival_date_time"]
        additionalInformations <- map["additional_informations"]
        departureDateTime <- map["departure_date_time"]
        ridesharingInformations <- map["ridesharing_informations"]
        to <- map["to"]
        baseArrivalDateTime <- map["base_arrival_date_time"]
        baseDepartureDateTime <- map["base_departure_date_time"]
        co2Emission <- map["co2_emission"]
        ridesharingJourneys <- map["ridesharing_journeys"]
        geojson <- map["geojson"]
        duration <- map["duration"]
        path <- map["path"]
        stopDateTimes <- map["stop_date_times"]
        type <- map["type"]
        id <- map["id"]
        dataFreshness <- map["data_freshness"]
        mode <- map["mode"]
    }

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["display_informations"] = self.displayInformations?.encodeToJSON()
        nillableDictionary["from"] = self.from?.encodeToJSON()
        nillableDictionary["links"] = self.links?.encodeToJSON()
        nillableDictionary["transfer_type"] = self.transferType?.rawValue
        nillableDictionary["arrival_date_time"] = self.arrivalDateTime
        nillableDictionary["additional_informations"] = self.additionalInformations?.map({$0.rawValue}).encodeToJSON()
        nillableDictionary["departure_date_time"] = self.departureDateTime
        nillableDictionary["ridesharing_informations"] = self.ridesharingInformations?.encodeToJSON()
        nillableDictionary["to"] = self.to?.encodeToJSON()
        nillableDictionary["base_arrival_date_time"] = self.baseArrivalDateTime
        nillableDictionary["base_departure_date_time"] = self.baseDepartureDateTime
        nillableDictionary["co2_emission"] = self.co2Emission?.encodeToJSON()
        nillableDictionary["ridesharing_journeys"] = self.ridesharingJourneys?.encodeToJSON()
        nillableDictionary["geojson"] = self.geojson?.encodeToJSON()
        nillableDictionary["duration"] = self.duration?.encodeToJSON()
        nillableDictionary["path"] = self.path?.encodeToJSON()
        nillableDictionary["stop_date_times"] = self.stopDateTimes?.encodeToJSON()
        nillableDictionary["type"] = self.type?.rawValue
        nillableDictionary["id"] = self.id
        nillableDictionary["data_freshness"] = self.dataFreshness?.rawValue
        nillableDictionary["mode"] = self.mode?.rawValue

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
