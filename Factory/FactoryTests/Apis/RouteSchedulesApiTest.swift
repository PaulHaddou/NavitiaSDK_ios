/*
 * navitia
 *      navitia.io is the open API for building cool stuff with mobility data. It provides the following services      * journeys computation     * line schedules     * next departures     * exploration of public transport data / search places     * and sexy things such as isochrones      navitia is a HATEOAS API that returns JSON formated results     
 *
 * OpenAPI spec version: v2.43.0-34-g30b0bcf
 * Contact: navitia@googlegroups.com
 *
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen.git
 * Do not edit the class manually.
 */


import XCTest
@testable import Factory
import NavitiaSDK
import Alamofire
import AlamofireObjectMapper

class RouteSchedulesApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // RouteSchedulesApi constructor
    func testShouldInstantiateRouteSchedulesApiGivenValidToken() {
        let currentApi:RouteSchedulesApi = RouteSchedulesApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateRouteSchedulesApiGivenValidToken() {
        let currentApi:RouteSchedulesApi? = nil

/*
        try {
            currentApi = RouteSchedulesApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatUriRouteSchedulesRequestBuilder_get() {}

    
        func test_CoverageRegionUriRouteSchedulesRequestBuilder_get() {}

    
        func test_RouteSchedulesRequestBuilder_get() {}

    
}
