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

class TripsApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // TripsApi constructor
    func testShouldInstantiateTripsApiGivenValidToken() {
        let currentApi:TripsApi = TripsApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateTripsApiGivenValidToken() {
        let currentApi:TripsApi? = nil

/*
        try {
            currentApi = TripsApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatTripsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatTripsRequestBuilder_get")
    let requestBuilder:CoverageLonLatTripsRequestBuilder = TripsApi(token: testToken).newCoverageLonLatTripsRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageLonLatTripsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageLonLatTripsRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatTripsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatTripsIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatTripsIdRequestBuilder = TripsApi(token: testToken).newCoverageLonLatTripsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withId("JDR:TGV-Nantes-Paris-REG-1A5891")

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageLonLatTripsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageLonLatTripsIdRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriTripsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriTripsRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriTripsRequestBuilder = TripsApi(token: testToken).newCoverageLonLatUriTripsRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageLonLatUriTripsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageLonLatUriTripsRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriTripsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriTripsIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriTripsIdRequestBuilder = TripsApi(token: testToken).newCoverageLonLatUriTripsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("JDR:TGV-Nantes-Paris-REG-1A5891")

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageLonLatUriTripsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageLonLatUriTripsIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionTripsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionTripsRequestBuilder_get")
    let requestBuilder:CoverageRegionTripsRequestBuilder = TripsApi(token: testToken).newCoverageRegionTripsRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageRegionTripsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageRegionTripsRequestBuilder_get : first element")
}
    
        func test_CoverageRegionTripsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionTripsIdRequestBuilder_get")
    let requestBuilder:CoverageRegionTripsIdRequestBuilder = TripsApi(token: testToken).newCoverageRegionTripsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withId("JDR:TGV-Nantes-Paris-REG-1A5891")

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageRegionTripsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageRegionTripsIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriTripsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriTripsRequestBuilder_get")
    let requestBuilder:CoverageRegionUriTripsRequestBuilder = TripsApi(token: testToken).newCoverageRegionUriTripsRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageRegionUriTripsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageRegionUriTripsRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriTripsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriTripsIdRequestBuilder_get")
    let requestBuilder:CoverageRegionUriTripsIdRequestBuilder = TripsApi(token: testToken).newCoverageRegionUriTripsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("JDR:TGV-Nantes-Paris-REG-1A5891")

    var asyncResult:Trips? = nil
    requestBuilder.get(completion: {
        (response: Trips?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.trips!.count > 0, "CoverageRegionUriTripsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.trips!.first != nil, "CoverageRegionUriTripsIdRequestBuilder_get : first element")
}
    
}
