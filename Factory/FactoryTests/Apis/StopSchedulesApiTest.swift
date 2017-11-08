/*
 * navitia
 *      navitia.io is the open API for building cool stuff with mobility data. It provides the following services      * journeys computation     * line schedules     * next departures     * exploration of public transport data / search places     * and sexy things such as isochrones      navitia is a HATEOAS API that returns JSON formated results     
 *
 * OpenAPI spec version: v2.43.0-42-g9b57eb6
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

class StopSchedulesApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // StopSchedulesApi constructor
    func testShouldInstantiateStopSchedulesApiGivenValidToken() {
        let currentApi:StopSchedulesApi = StopSchedulesApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateStopSchedulesApiGivenValidToken() {
        let currentApi:StopSchedulesApi? = nil

/*
        try {
            currentApi = StopSchedulesApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatUriStopSchedulesRequestBuilder_get() {}

    
        func test_CoverageRegionUriStopSchedulesRequestBuilder_get() {}

    
        func test_StopSchedulesRequestBuilder_get() {}

    
}