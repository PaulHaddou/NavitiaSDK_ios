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

class PoiTypesApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // PoiTypesApi constructor
    func testShouldInstantiatePoiTypesApiGivenValidToken() {
        let currentApi:PoiTypesApi = PoiTypesApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiatePoiTypesApiGivenValidToken() {
        let currentApi:PoiTypesApi? = nil

/*
        try {
            currentApi = PoiTypesApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatPoiTypesRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatPoiTypesRequestBuilder_get")
    let requestBuilder:CoverageLonLatPoiTypesRequestBuilder = PoiTypesApi(token: testToken).newCoverageLonLatPoiTypesRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:PoiTypes? = nil
    requestBuilder.get(completion: {
        (response: PoiTypes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.poiTypes!.count > 0, "CoverageLonLatPoiTypesRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.poiTypes!.first != nil, "CoverageLonLatPoiTypesRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatPoiTypesIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatPoiTypesIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatPoiTypesIdRequestBuilder = PoiTypesApi(token: testToken).newCoverageLonLatPoiTypesIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withId("poi_type:college")

    var asyncResult:PoiTypes? = nil
    requestBuilder.get(completion: {
        (response: PoiTypes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.poiTypes!.count > 0, "CoverageLonLatPoiTypesIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.poiTypes!.first != nil, "CoverageLonLatPoiTypesIdRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriPoiTypesRequestBuilder_get() {}

    
        func test_CoverageLonLatUriPoiTypesIdRequestBuilder_get() {}

    
        func test_CoverageRegionPoiTypesRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionPoiTypesRequestBuilder_get")
    let requestBuilder:CoverageRegionPoiTypesRequestBuilder = PoiTypesApi(token: testToken).newCoverageRegionPoiTypesRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:PoiTypes? = nil
    requestBuilder.get(completion: {
        (response: PoiTypes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.poiTypes!.count > 0, "CoverageRegionPoiTypesRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.poiTypes!.first != nil, "CoverageRegionPoiTypesRequestBuilder_get : first element")
}
    
        func test_CoverageRegionPoiTypesIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionPoiTypesIdRequestBuilder_get")
    let requestBuilder:CoverageRegionPoiTypesIdRequestBuilder = PoiTypesApi(token: testToken).newCoverageRegionPoiTypesIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withId("poi_type:college")

    var asyncResult:PoiTypes? = nil
    requestBuilder.get(completion: {
        (response: PoiTypes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.poiTypes!.count > 0, "CoverageRegionPoiTypesIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.poiTypes!.first != nil, "CoverageRegionPoiTypesIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriPoiTypesRequestBuilder_get() {}

    
        func test_CoverageRegionUriPoiTypesIdRequestBuilder_get() {}

    
}
