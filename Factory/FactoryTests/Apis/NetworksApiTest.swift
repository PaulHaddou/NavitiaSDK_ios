/*
 * navitia
 *      navitia.io is the open API for building cool stuff with mobility data. It provides the following services      * journeys computation     * line schedules     * next departures     * exploration of public transport data / search places     * and sexy things such as isochrones      navitia is a HATEOAS API that returns JSON formated results     
 *
 * OpenAPI spec version: v2.43.0-34-g30b0bcf
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

class NetworksApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // NetworksApi constructor
    func testShouldInstantiateNetworksApiGivenValidToken() {
        let currentApi:NetworksApi = NetworksApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateNetworksApiGivenValidToken() {
        let currentApi:NetworksApi? = nil

/*
        try {
            currentApi = NetworksApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatNetworksRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatNetworksRequestBuilder_get")
    let requestBuilder:CoverageLonLatNetworksRequestBuilder = NetworksApi(token: testToken).newCoverageLonLatNetworksRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageLonLatNetworksRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageLonLatNetworksRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatNetworksIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatNetworksIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatNetworksIdRequestBuilder = NetworksApi(token: testToken).newCoverageLonLatNetworksIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withId("network:JDR:2")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageLonLatNetworksIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageLonLatNetworksIdRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriNetworksRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriNetworksRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriNetworksRequestBuilder = NetworksApi(token: testToken).newCoverageLonLatUriNetworksRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageLonLatUriNetworksRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageLonLatUriNetworksRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriNetworksIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriNetworksIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriNetworksIdRequestBuilder = NetworksApi(token: testToken).newCoverageLonLatUriNetworksIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("network:JDR:2")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageLonLatUriNetworksIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageLonLatUriNetworksIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionNetworksRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionNetworksRequestBuilder_get")
    let requestBuilder:CoverageRegionNetworksRequestBuilder = NetworksApi(token: testToken).newCoverageRegionNetworksRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageRegionNetworksRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageRegionNetworksRequestBuilder_get : first element")
}
    
        func test_CoverageRegionNetworksIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionNetworksIdRequestBuilder_get")
    let requestBuilder:CoverageRegionNetworksIdRequestBuilder = NetworksApi(token: testToken).newCoverageRegionNetworksIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withId("network:JDR:2")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageRegionNetworksIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageRegionNetworksIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriNetworksRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriNetworksRequestBuilder_get")
    let requestBuilder:CoverageRegionUriNetworksRequestBuilder = NetworksApi(token: testToken).newCoverageRegionUriNetworksRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageRegionUriNetworksRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageRegionUriNetworksRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriNetworksIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriNetworksIdRequestBuilder_get")
    let requestBuilder:CoverageRegionUriNetworksIdRequestBuilder = NetworksApi(token: testToken).newCoverageRegionUriNetworksIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("network:JDR:2")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "CoverageRegionUriNetworksIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "CoverageRegionUriNetworksIdRequestBuilder_get : first element")
}
    
        func test_NetworksRequestBuilder_get() {
    let expectation = self.expectation(description: "NetworksRequestBuilder_get")
    let requestBuilder:NetworksRequestBuilder = NetworksApi(token: testToken).newNetworksRequestBuilder()

    // Test case parameters
    requestBuilder.withExternalCode("JDR1")

    var asyncResult:Networks? = nil
    requestBuilder.get(completion: {
        (response: Networks?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.networks!.count > 0, "NetworksRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.networks!.first != nil, "NetworksRequestBuilder_get : first element")
}
    
}
