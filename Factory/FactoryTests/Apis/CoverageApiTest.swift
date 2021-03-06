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

class CoverageApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // CoverageApi constructor
    func testShouldInstantiateCoverageApiGivenValidToken() {
        let currentApi:CoverageApi = CoverageApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateCoverageApiGivenValidToken() {
        let currentApi:CoverageApi? = nil

/*
        try {
            currentApi = CoverageApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRequestBuilder_get")
    let requestBuilder:CoverageRequestBuilder = CoverageApi(token: testToken).newCoverageRequestBuilder()

    // Test case parameters

    var asyncResult:Coverages? = nil
    requestBuilder.get(completion: {
        (response: Coverages?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.regions!.count > 0, "CoverageRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.regions!.first != nil, "CoverageRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatRequestBuilder_get")
    let requestBuilder:CoverageLonLatRequestBuilder = CoverageApi(token: testToken).newCoverageLonLatRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:Coverages? = nil
    requestBuilder.get(completion: {
        (response: Coverages?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.regions!.count > 0, "CoverageLonLatRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.regions!.first != nil, "CoverageLonLatRequestBuilder_get : first element")
}
    
        func test_CoverageRegionRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionRequestBuilder_get")
    let requestBuilder:CoverageRegionRequestBuilder = CoverageApi(token: testToken).newCoverageRegionRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:Coverages? = nil
    requestBuilder.get(completion: {
        (response: Coverages?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.regions!.count > 0, "CoverageRegionRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.regions!.first != nil, "CoverageRegionRequestBuilder_get : first element")
}
    
}
