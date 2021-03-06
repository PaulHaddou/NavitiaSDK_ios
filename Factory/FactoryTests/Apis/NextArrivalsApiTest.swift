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

class NextArrivalsApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // NextArrivalsApi constructor
    func testShouldInstantiateNextArrivalsApiGivenValidToken() {
        let currentApi:NextArrivalsApi = NextArrivalsApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateNextArrivalsApiGivenValidToken() {
        let currentApi:NextArrivalsApi? = nil

/*
        try {
            currentApi = NextArrivalsApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatArrivalsRequestBuilder_get() {}

    
        func test_CoverageLonLatUriArrivalsRequestBuilder_get() {}

    
        func test_CoverageRegionArrivalsRequestBuilder_get() {}

    
        func test_CoverageRegionUriArrivalsRequestBuilder_get() {}

    
}
