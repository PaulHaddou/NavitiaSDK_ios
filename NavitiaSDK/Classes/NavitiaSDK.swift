import Foundation

open class NavitiaSDK: NSObject {
    open let commercialModesApi: CommercialModesAPI
    open let companiesApi: CompaniesAPI
    open let contributorsApi: ContributorsAPI
    open let coverageApi: CoverageAPI
    open let datasetsApi: DatasetsAPI
    open let disruptionsApi: DisruptionsAPI
    open let journeyPatternPointsApi: JourneyPatternPointsAPI
    open let journeyPatternsApi: JourneyPatternsAPI
    open let journeysApi: JourneysAPI
    open let lineGroupsApi: LineGroupsAPI
    open let linesApi: LinesAPI
    open let networksApi: NetworksAPI
    open let nextArrivalsApi: NextArrivalsAPI
    open let nextDeparturesApi: NextDeparturesAPI
    open let physicalModesApi: PhysicalModesAPI
    open let placesApi: PlacesAPI
    open let poiTypesApi: PoiTypesAPI
    open let poisApi: PoisAPI
    open let routeSchedulesApi: RouteSchedulesAPI
    open let routesApi: RoutesAPI
    open let stopAreasApi: StopAreasAPI
    open let stopPointsApi: StopPointsAPI
    open let stopSchedulesApi: StopSchedulesAPI
    open let tripsApi: TripsAPI
    open let vehicleJourneysApi: VehicleJourneysAPI

    public init(configuration:NavitiaConfiguration) {
        self.commercialModesApi = CommercialModesAPI(token: configuration.token);
        self.companiesApi = CompaniesAPI(token: configuration.token);
        self.contributorsApi = ContributorsAPI(token: configuration.token);
        self.coverageApi = CoverageAPI(token: configuration.token);
        self.datasetsApi = DatasetsAPI(token: configuration.token);
        self.disruptionsApi = DisruptionsAPI(token: configuration.token);
        self.journeyPatternPointsApi = JourneyPatternPointsAPI(token: configuration.token);
        self.journeyPatternsApi = JourneyPatternsAPI(token: configuration.token);
        self.journeysApi = JourneysAPI(token: configuration.token);
        self.lineGroupsApi = LineGroupsAPI(token: configuration.token);
        self.linesApi = LinesAPI(token: configuration.token);
        self.networksApi = NetworksAPI(token: configuration.token);
        self.nextArrivalsApi = NextArrivalsAPI(token: configuration.token);
        self.nextDeparturesApi = NextDeparturesAPI(token: configuration.token);
        self.physicalModesApi = PhysicalModesAPI(token: configuration.token);
        self.placesApi = PlacesAPI(token: configuration.token);
        self.poiTypesApi = PoiTypesAPI(token: configuration.token);
        self.poisApi = PoisAPI(token: configuration.token);
        self.routeSchedulesApi = RouteSchedulesAPI(token: configuration.token);
        self.routesApi = RoutesAPI(token: configuration.token);
        self.stopAreasApi = StopAreasAPI(token: configuration.token);
        self.stopPointsApi = StopPointsAPI(token: configuration.token);
        self.stopSchedulesApi = StopSchedulesAPI(token: configuration.token);
        self.tripsApi = TripsAPI(token: configuration.token);
        self.vehicleJourneysApi = VehicleJourneysAPI(token: configuration.token);
    }
}
