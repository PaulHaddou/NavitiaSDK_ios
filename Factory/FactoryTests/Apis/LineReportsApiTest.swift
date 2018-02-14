/*
 * navitia
 *      navitia.io is the open API for building cool stuff with mobility data. It provides the following services      * journeys computation     * line schedules     * next departures     * exploration of public transport data / search places     * and sexy things such as isochrones      navitia is a HATEOAS API that returns JSON formated results     
 *
 * OpenAPI spec version: v2.50.0
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

class LineReportsApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // LineReportsApi constructor
    func testShouldInstantiateLineReportsApiGivenValidToken() {
        let currentApi:LineReportsApi = LineReportsApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateLineReportsApiGivenValidToken() {
        let currentApi:LineReportsApi? = nil

/*
        try {
            currentApi = LineReportsApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatLineReportsRequestBuilder_get() {}

    
        func test_CoverageLonLatUriLineReportsRequestBuilder_get() {}

    
        func test_CoverageRegionLineReportsRequestBuilder_get() {}

    
        func test_CoverageRegionUriLineReportsRequestBuilder_get() {}

    
}
