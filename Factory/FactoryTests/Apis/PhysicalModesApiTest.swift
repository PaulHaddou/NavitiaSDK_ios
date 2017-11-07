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

class PhysicalModesApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // PhysicalModesApi constructor
    func testShouldInstantiatePhysicalModesApiGivenValidToken() {
        let currentApi:PhysicalModesApi = PhysicalModesApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiatePhysicalModesApiGivenValidToken() {
        let currentApi:PhysicalModesApi? = nil

/*
        try {
            currentApi = PhysicalModesApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatPhysicalModesRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatPhysicalModesRequestBuilder_get")
    let requestBuilder:CoverageLonLatPhysicalModesRequestBuilder = PhysicalModesApi(token: testToken).newCoverageLonLatPhysicalModesRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageLonLatPhysicalModesRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageLonLatPhysicalModesRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatPhysicalModesIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatPhysicalModesIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatPhysicalModesIdRequestBuilder = PhysicalModesApi(token: testToken).newCoverageLonLatPhysicalModesIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withId("physical_mode:LongDistanceTrain")

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageLonLatPhysicalModesIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageLonLatPhysicalModesIdRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriPhysicalModesRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriPhysicalModesRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriPhysicalModesRequestBuilder = PhysicalModesApi(token: testToken).newCoverageLonLatUriPhysicalModesRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageLonLatUriPhysicalModesRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageLonLatUriPhysicalModesRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriPhysicalModesIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriPhysicalModesIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriPhysicalModesIdRequestBuilder = PhysicalModesApi(token: testToken).newCoverageLonLatUriPhysicalModesIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("physical_mode:LongDistanceTrain")

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageLonLatUriPhysicalModesIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageLonLatUriPhysicalModesIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionPhysicalModesRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionPhysicalModesRequestBuilder_get")
    let requestBuilder:CoverageRegionPhysicalModesRequestBuilder = PhysicalModesApi(token: testToken).newCoverageRegionPhysicalModesRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageRegionPhysicalModesRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageRegionPhysicalModesRequestBuilder_get : first element")
}
    
        func test_CoverageRegionPhysicalModesIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionPhysicalModesIdRequestBuilder_get")
    let requestBuilder:CoverageRegionPhysicalModesIdRequestBuilder = PhysicalModesApi(token: testToken).newCoverageRegionPhysicalModesIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withId("physical_mode:LongDistanceTrain")

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageRegionPhysicalModesIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageRegionPhysicalModesIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriPhysicalModesRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriPhysicalModesRequestBuilder_get")
    let requestBuilder:CoverageRegionUriPhysicalModesRequestBuilder = PhysicalModesApi(token: testToken).newCoverageRegionUriPhysicalModesRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageRegionUriPhysicalModesRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageRegionUriPhysicalModesRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriPhysicalModesIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriPhysicalModesIdRequestBuilder_get")
    let requestBuilder:CoverageRegionUriPhysicalModesIdRequestBuilder = PhysicalModesApi(token: testToken).newCoverageRegionUriPhysicalModesIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("physical_mode:LongDistanceTrain")

    var asyncResult:PhysicalModes? = nil
    requestBuilder.get(completion: {
        (response: PhysicalModes?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.physicalModes!.count > 0, "CoverageRegionUriPhysicalModesIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.physicalModes!.first != nil, "CoverageRegionUriPhysicalModesIdRequestBuilder_get : first element")
}
    
}
