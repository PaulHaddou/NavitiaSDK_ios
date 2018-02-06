/*
 * navitia
 *      navitia.io is the open API for building cool stuff with mobility data. It provides the following services      * journeys computation     * line schedules     * next departures     * exploration of public transport data / search places     * and sexy things such as isochrones      navitia is a HATEOAS API that returns JSON formated results     
 *
 * OpenAPI spec version: v2.49.0
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

class JourneysApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // JourneysApi constructor
    func testShouldInstantiateJourneysApiGivenValidToken() {
        let currentApi:JourneysApi = JourneysApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateJourneysApiGivenValidToken() {
        let currentApi:JourneysApi? = nil

/*
        try {
            currentApi = JourneysApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatJourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatJourneysRequestBuilder_get")
    let requestBuilder:CoverageLonLatJourneysRequestBuilder = JourneysApi(token: testToken).newCoverageLonLatJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withFrom("stop_area:JDR:SA:GDLYO")
    requestBuilder.withTo("2.3665844;48.8465337")

    var asyncResult:Journeys? = nil
    requestBuilder.get(completion: {
        (response: Journeys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeys!.count > 0, "CoverageLonLatJourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeys!.first != nil, "CoverageLonLatJourneysRequestBuilder_get : first element")
}
    
        func test_CoverageRegionJourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionJourneysRequestBuilder_get")
    let requestBuilder:CoverageRegionJourneysRequestBuilder = JourneysApi(token: testToken).newCoverageRegionJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withFrom("stop_area:JDR:SA:GDLYO")
    requestBuilder.withTo("2.3665844;48.8465337")

    var asyncResult:Journeys? = nil
    requestBuilder.get(completion: {
        (response: Journeys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeys!.count > 0, "CoverageRegionJourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeys!.first != nil, "CoverageRegionJourneysRequestBuilder_get : first element")
}
    
        func test_JourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "JourneysRequestBuilder_get")
    let requestBuilder:JourneysRequestBuilder = JourneysApi(token: testToken).newJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withFrom("stop_area:JDR:SA:GDLYO")
    requestBuilder.withTo("2.3665844;48.8465337")

    var asyncResult:Journeys? = nil
    requestBuilder.get(completion: {
        (response: Journeys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.journeys!.count > 0, "JourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.journeys!.first != nil, "JourneysRequestBuilder_get : first element")
}
    
}
