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

class VehicleJourneysApiTest: XCTestCase {
    private var testToken:String = "47e2c935-7635-42ec-934c-cc582eaa04b6"

    // VehicleJourneysApi constructor
    func testShouldInstantiateVehicleJourneysApiGivenValidToken() {
        let currentApi:VehicleJourneysApi = VehicleJourneysApi(token: testToken)

        XCTAssertTrue(currentApi != nil, "Api should instantiate with a token")
    }

    func testShouldNotInstantiateVehicleJourneysApiGivenValidToken() {
        let currentApi:VehicleJourneysApi? = nil

/*
        try {
            currentApi = VehicleJourneysApi(token: "")
        } catch (Exception e) {
            assertEquals("Navitia token cannot be empty", e.getMessage())
        }
        XCTAssertTrue(currentApi == nil, "Api should not instantiate with an empty token")
*/
    }

    
        func test_CoverageLonLatUriVehicleJourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriVehicleJourneysRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriVehicleJourneysRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageLonLatUriVehicleJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageLonLatUriVehicleJourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageLonLatUriVehicleJourneysRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatUriVehicleJourneysIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatUriVehicleJourneysIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatUriVehicleJourneysIdRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageLonLatUriVehicleJourneysIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("vehicle_journey:JDR:TGV-Paris-Nantes-REG-1A5903_dst_1")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageLonLatUriVehicleJourneysIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageLonLatUriVehicleJourneysIdRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatVehicleJourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatVehicleJourneysRequestBuilder_get")
    let requestBuilder:CoverageLonLatVehicleJourneysRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageLonLatVehicleJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageLonLatVehicleJourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageLonLatVehicleJourneysRequestBuilder_get : first element")
}
    
        func test_CoverageLonLatVehicleJourneysIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageLonLatVehicleJourneysIdRequestBuilder_get")
    let requestBuilder:CoverageLonLatVehicleJourneysIdRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageLonLatVehicleJourneysIdRequestBuilder()

    // Test case parameters
    requestBuilder.withLat(48.8459388)
    requestBuilder.withLon(2.3709227)
    requestBuilder.withId("vehicle_journey:JDR:TGV-Paris-Nantes-REG-1A5903_dst_1")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageLonLatVehicleJourneysIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageLonLatVehicleJourneysIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriVehicleJourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriVehicleJourneysRequestBuilder_get")
    let requestBuilder:CoverageRegionUriVehicleJourneysRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageRegionUriVehicleJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageRegionUriVehicleJourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageRegionUriVehicleJourneysRequestBuilder_get : first element")
}
    
        func test_CoverageRegionUriVehicleJourneysIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionUriVehicleJourneysIdRequestBuilder_get")
    let requestBuilder:CoverageRegionUriVehicleJourneysIdRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageRegionUriVehicleJourneysIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withUri("lines/line:JDR:TGV")
    requestBuilder.withId("vehicle_journey:JDR:TGV-Paris-Nantes-REG-1A5903_dst_1")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageRegionUriVehicleJourneysIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageRegionUriVehicleJourneysIdRequestBuilder_get : first element")
}
    
        func test_CoverageRegionVehicleJourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionVehicleJourneysRequestBuilder_get")
    let requestBuilder:CoverageRegionVehicleJourneysRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageRegionVehicleJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageRegionVehicleJourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageRegionVehicleJourneysRequestBuilder_get : first element")
}
    
        func test_CoverageRegionVehicleJourneysIdRequestBuilder_get() {
    let expectation = self.expectation(description: "CoverageRegionVehicleJourneysIdRequestBuilder_get")
    let requestBuilder:CoverageRegionVehicleJourneysIdRequestBuilder = VehicleJourneysApi(token: testToken).newCoverageRegionVehicleJourneysIdRequestBuilder()

    // Test case parameters
    requestBuilder.withRegion("jdr")
    requestBuilder.withId("vehicle_journey:JDR:TGV-Paris-Nantes-REG-1A5903_dst_1")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "CoverageRegionVehicleJourneysIdRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "CoverageRegionVehicleJourneysIdRequestBuilder_get : first element")
}
    
        func test_VehicleJourneysRequestBuilder_get() {
    let expectation = self.expectation(description: "VehicleJourneysRequestBuilder_get")
    let requestBuilder:VehicleJourneysRequestBuilder = VehicleJourneysApi(token: testToken).newVehicleJourneysRequestBuilder()

    // Test case parameters
    requestBuilder.withExternalCode("JDRBateau-REG-A-1")

    var asyncResult:VehicleJourneys? = nil
    requestBuilder.get(completion: {
        (response: VehicleJourneys?, error: Error?) -> Void in
        asyncResult = response
        expectation.fulfill()
    })

    waitForExpectations(timeout: 30)
    XCTAssertTrue(asyncResult!.vehicleJourneys!.count > 0, "VehicleJourneysRequestBuilder_get : size")
    XCTAssertTrue(asyncResult!.vehicleJourneys!.first != nil, "VehicleJourneysRequestBuilder_get : first element")
}
    
}
