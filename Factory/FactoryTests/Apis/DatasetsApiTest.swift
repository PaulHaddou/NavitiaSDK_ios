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

class DatasetsApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // DatasetsApi constructor
    func testShouldInstantiateDatasetsApiGivenValidToken() {
        let currentApi:DatasetsApi = DatasetsApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateDatasetsApiGivenValidToken() {
        let currentApi:DatasetsApi? = nil

/*
        try {
            currentApi = DatasetsApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatDatasetsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatDatasetsRequestBuilder_get")
    let requestBuilder:CoverageLonLatDatasetsRequestBuilder = DatasetsApi(token: testToken).newCoverageLonLatDatasetsRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageLonLatDatasetsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageLonLatDatasetsRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatDatasetsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatDatasetsIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatDatasetsIdRequestBuilder = DatasetsApi(token: testToken).newCoverageLonLatDatasetsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withId("JDR:0")

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageLonLatDatasetsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageLonLatDatasetsIdRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriDatasetsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriDatasetsRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriDatasetsRequestBuilder = DatasetsApi(token: testToken).newCoverageLonLatUriDatasetsRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageLonLatUriDatasetsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageLonLatUriDatasetsRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriDatasetsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriDatasetsIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriDatasetsIdRequestBuilder = DatasetsApi(token: testToken).newCoverageLonLatUriDatasetsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("JDR:0")

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageLonLatUriDatasetsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageLonLatUriDatasetsIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionDatasetsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionDatasetsRequestBuilder_get")
    let requestBuilder:CoverageRegionDatasetsRequestBuilder = DatasetsApi(token: testToken).newCoverageRegionDatasetsRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageRegionDatasetsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageRegionDatasetsRequestBuilder_get : first element")
}
    
        func test_CoverageRegionDatasetsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionDatasetsIdRequestBuilder_get")
    let requestBuilder:CoverageRegionDatasetsIdRequestBuilder = DatasetsApi(token: testToken).newCoverageRegionDatasetsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withId("JDR:0")

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageRegionDatasetsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageRegionDatasetsIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriDatasetsRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriDatasetsRequestBuilder_get")
    let requestBuilder:CoverageRegionUriDatasetsRequestBuilder = DatasetsApi(token: testToken).newCoverageRegionUriDatasetsRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageRegionUriDatasetsRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageRegionUriDatasetsRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriDatasetsIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriDatasetsIdRequestBuilder_get")
    let requestBuilder:CoverageRegionUriDatasetsIdRequestBuilder = DatasetsApi(token: testToken).newCoverageRegionUriDatasetsIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("JDR:0")

    var asyncResult:Datasets? = nil
    requestBuilder.get(completion: {
        (response: Datasets?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.datasets!.count > 0, "CoverageRegionUriDatasetsIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.datasets!.first != nil, "CoverageRegionUriDatasetsIdRequestBuilder_get : first element")
}
    
}
