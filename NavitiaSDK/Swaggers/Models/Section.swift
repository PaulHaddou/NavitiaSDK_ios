//
// Section.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Section: Codable {

    public enum TransferType: String, Codable { 
        case walking = "walking"
        case stayIn = "stay_in"
    }
    public enum AdditionalInformations: String, Codable { 
        case odtWithZone = "odt_with_zone"
        case odtWithStopPoint = "odt_with_stop_point"
        case odtWithStopTime = "odt_with_stop_time"
        case hasDatetimeEstimated = "has_datetime_estimated"
        case regular = "regular"
        case stayIn = "stay_in"
    }
    public enum ModelType: String, Codable { 
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
    public enum DataFreshness: String, Codable { 
        case baseSchedule = "base_schedule"
        case adaptedSchedule = "adapted_schedule"
        case realtime = "realtime"
    }
    public enum Mode: String, Codable { 
        case walking = "walking"
        case bike = "bike"
        case car = "car"
        case bss = "bss"
        case ridesharing = "ridesharing"
        case carnopark = "carnopark"
    }
    public var displayInformations: VJDisplayInformation?
    public var from: Place?
    public var links: [LinkSchema]
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
    public var co2Emission: Amount
    public var ridesharingJourneys: [Journey]?
    /** GeoJSON of the shape of the section */
    public var geojson: SectionGeoJsonSchema?
    /** Duration of the section (seconds) */
    public var duration: Int
    public var path: [Path]?
    public var stopDateTimes: [StopDateTime]?
    public var type: ModelType?
    public var _id: String
    public var dataFreshness: DataFreshness?
    public var mode: Mode?

    public init(displayInformations: VJDisplayInformation?, from: Place?, links: [LinkSchema], transferType: TransferType?, arrivalDateTime: String?, additionalInformations: [AdditionalInformations]?, departureDateTime: String?, ridesharingInformations: RidesharingInformation?, to: Place?, baseArrivalDateTime: String?, baseDepartureDateTime: String?, co2Emission: Amount, ridesharingJourneys: [Journey]?, geojson: SectionGeoJsonSchema?, duration: Int, path: [Path]?, stopDateTimes: [StopDateTime]?, type: ModelType?, _id: String, dataFreshness: DataFreshness?, mode: Mode?) {
        self.displayInformations = displayInformations
        self.from = from
        self.links = links
        self.transferType = transferType
        self.arrivalDateTime = arrivalDateTime
        self.additionalInformations = additionalInformations
        self.departureDateTime = departureDateTime
        self.ridesharingInformations = ridesharingInformations
        self.to = to
        self.baseArrivalDateTime = baseArrivalDateTime
        self.baseDepartureDateTime = baseDepartureDateTime
        self.co2Emission = co2Emission
        self.ridesharingJourneys = ridesharingJourneys
        self.geojson = geojson
        self.duration = duration
        self.path = path
        self.stopDateTimes = stopDateTimes
        self.type = type
        self._id = _id
        self.dataFreshness = dataFreshness
        self.mode = mode
    }

    public enum CodingKeys: String, CodingKey { 
        case displayInformations = "display_informations"
        case from
        case links
        case transferType = "transfer_type"
        case arrivalDateTime = "arrival_date_time"
        case additionalInformations = "additional_informations"
        case departureDateTime = "departure_date_time"
        case ridesharingInformations = "ridesharing_informations"
        case to
        case baseArrivalDateTime = "base_arrival_date_time"
        case baseDepartureDateTime = "base_departure_date_time"
        case co2Emission = "co2_emission"
        case ridesharingJourneys = "ridesharing_journeys"
        case geojson
        case duration
        case path
        case stopDateTimes = "stop_date_times"
        case type
        case _id = "id"
        case dataFreshness = "data_freshness"
        case mode
    }


}

