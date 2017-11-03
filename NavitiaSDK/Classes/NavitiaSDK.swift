import Foundation

open class NavitiaSDK: NSObject {
    open let calendarsApi: CalendarsApi
    open let commercialModesApi: CommercialModesApi
    open let companiesApi: CompaniesApi
    open let contributorsApi: ContributorsApi
    open let coverageApi: CoverageApi
    open let datasetsApi: DatasetsApi
    open let disruptionsApi: DisruptionsApi
    open let geoStatusApi: GeoStatusApi
    open let graphicalIsochroneApi: GraphicalIsochroneApi
    open let heatMapApi: HeatMapApi
    open let journeyPatternPointsApi: JourneyPatternPointsApi
    open let journeyPatternsApi: JourneyPatternsApi
    open let journeysApi: JourneysApi
    open let lineGroupsApi: LineGroupsApi
    open let lineReportsApi: LineReportsApi
    open let linesApi: LinesApi
    open let networksApi: NetworksApi
    open let nextArrivalsApi: NextArrivalsApi
    open let nextDeparturesApi: NextDeparturesApi
    open let physicalModesApi: PhysicalModesApi
    open let placesApi: PlacesApi
    open let placesNearbyApi: PlacesNearbyApi
    open let poiTypesApi: PoiTypesApi
    open let poisApi: PoisApi
    open let ptobjectsApi: PtobjectsApi
    open let routeSchedulesApi: RouteSchedulesApi
    open let routesApi: RoutesApi
    open let statusApi: StatusApi
    open let stopAreasApi: StopAreasApi
    open let stopPointsApi: StopPointsApi
    open let stopSchedulesApi: StopSchedulesApi
    open let trafficReportApi: TrafficReportApi
    open let tripsApi: TripsApi
    open let vehicleJourneysApi: VehicleJourneysApi

    public init(configuration:NavitiaConfiguration) {
        self.calendarsApi = CalendarsApi(token: configuration.token);
        self.commercialModesApi = CommercialModesApi(token: configuration.token);
        self.companiesApi = CompaniesApi(token: configuration.token);
        self.contributorsApi = ContributorsApi(token: configuration.token);
        self.coverageApi = CoverageApi(token: configuration.token);
        self.datasetsApi = DatasetsApi(token: configuration.token);
        self.disruptionsApi = DisruptionsApi(token: configuration.token);
        self.geoStatusApi = GeoStatusApi(token: configuration.token);
        self.graphicalIsochroneApi = GraphicalIsochroneApi(token: configuration.token);
        self.heatMapApi = HeatMapApi(token: configuration.token);
        self.journeyPatternPointsApi = JourneyPatternPointsApi(token: configuration.token);
        self.journeyPatternsApi = JourneyPatternsApi(token: configuration.token);
        self.journeysApi = JourneysApi(token: configuration.token);
        self.lineGroupsApi = LineGroupsApi(token: configuration.token);
        self.lineReportsApi = LineReportsApi(token: configuration.token);
        self.linesApi = LinesApi(token: configuration.token);
        self.networksApi = NetworksApi(token: configuration.token);
        self.nextArrivalsApi = NextArrivalsApi(token: configuration.token);
        self.nextDeparturesApi = NextDeparturesApi(token: configuration.token);
        self.physicalModesApi = PhysicalModesApi(token: configuration.token);
        self.placesApi = PlacesApi(token: configuration.token);
        self.placesNearbyApi = PlacesNearbyApi(token: configuration.token);
        self.poiTypesApi = PoiTypesApi(token: configuration.token);
        self.poisApi = PoisApi(token: configuration.token);
        self.ptobjectsApi = PtobjectsApi(token: configuration.token);
        self.routeSchedulesApi = RouteSchedulesApi(token: configuration.token);
        self.routesApi = RoutesApi(token: configuration.token);
        self.statusApi = StatusApi(token: configuration.token);
        self.stopAreasApi = StopAreasApi(token: configuration.token);
        self.stopPointsApi = StopPointsApi(token: configuration.token);
        self.stopSchedulesApi = StopSchedulesApi(token: configuration.token);
        self.trafficReportApi = TrafficReportApi(token: configuration.token);
        self.tripsApi = TripsApi(token: configuration.token);
        self.vehicleJourneysApi = VehicleJourneysApi(token: configuration.token);
    }
}
