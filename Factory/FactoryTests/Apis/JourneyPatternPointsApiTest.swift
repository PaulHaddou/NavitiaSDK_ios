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

class JourneyPatternPointsApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // JourneyPatternPointsApi constructor
    func testShouldInstantiateJourneyPatternPointsApiGivenValidToken() {
        let currentApi:JourneyPatternPointsApi = JourneyPatternPointsApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateJourneyPatternPointsApiGivenValidToken() {
        let currentApi:JourneyPatternPointsApi? = nil

/*
        try {
            currentApi = JourneyPatternPointsApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatJourneyPatternPointsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatJourneyPatternPointsRequestBuilder_get")
    let requestBuilder:CoverageLonLatJourneyPatternPointsRequestBuilder = JourneyPatternPointsApi(token: testToken).newCoverageLonLatJourneyPatternPointsRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:JourneyPatternPoints? = nil
    requestBuilder.get(completion: {
        (response: JourneyPatternPoints?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.count > 0, "CoverageLonLatJourneyPatternPointsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.first != nil, "CoverageLonLatJourneyPatternPointsRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatJourneyPatternPointsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatJourneyPatternPointsIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatJourneyPatternPointsIdRequestBuilder = JourneyPatternPointsApi(token: testToken).newCoverageLonLatJourneyPatternPointsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withId("journey_pattern_point:0")

    var asyncResult:JourneyPatternPoints? = nil
    requestBuilder.get(completion: {
        (response: JourneyPatternPoints?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.count > 0, "CoverageLonLatJourneyPatternPointsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.first != nil, "CoverageLonLatJourneyPatternPointsIdRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriJourneyPatternPointsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriJourneyPatternPointsRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriJourneyPatternPointsRequestBuilder = JourneyPatternPointsApi(token: testToken).newCoverageLonLatUriJourneyPatternPointsRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:JourneyPatternPoints? = nil
    requestBuilder.get(completion: {
        (response: JourneyPatternPoints?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.count > 0, "CoverageLonLatUriJourneyPatternPointsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.first != nil, "CoverageLonLatUriJourneyPatternPointsRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriJourneyPatternPointsIdRequestBuilder_get() {}

    
        func test_CoverageRegionJourneyPatternPointsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionJourneyPatternPointsRequestBuilder_get")
    let requestBuilder:CoverageRegionJourneyPatternPointsRequestBuilder = JourneyPatternPointsApi(token: testToken).newCoverageRegionJourneyPatternPointsRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:JourneyPatternPoints? = nil
    requestBuilder.get(completion: {
        (response: JourneyPatternPoints?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.count > 0, "CoverageRegionJourneyPatternPointsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.first != nil, "CoverageRegionJourneyPatternPointsRequestBuilder_get : first element")
}
    
        func test_CoverageRegionJourneyPatternPointsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionJourneyPatternPointsIdRequestBuilder_get")
    let requestBuilder:CoverageRegionJourneyPatternPointsIdRequestBuilder = JourneyPatternPointsApi(token: testToken).newCoverageRegionJourneyPatternPointsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withId("journey_pattern_point:0")

    var asyncResult:JourneyPatternPoints? = nil
    requestBuilder.get(completion: {
        (response: JourneyPatternPoints?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.count > 0, "CoverageRegionJourneyPatternPointsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.first != nil, "CoverageRegionJourneyPatternPointsIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriJourneyPatternPointsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriJourneyPatternPointsRequestBuilder_get")
    let requestBuilder:CoverageRegionUriJourneyPatternPointsRequestBuilder = JourneyPatternPointsApi(token: testToken).newCoverageRegionUriJourneyPatternPointsRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:JourneyPatternPoints? = nil
    requestBuilder.get(completion: {
        (response: JourneyPatternPoints?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.count > 0, "CoverageRegionUriJourneyPatternPointsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeyPatternPoints!.first != nil, "CoverageRegionUriJourneyPatternPointsRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriJourneyPatternPointsIdRequestBuilder_get() {}

    
}
