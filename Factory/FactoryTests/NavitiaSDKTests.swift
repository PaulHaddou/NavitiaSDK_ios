//
//  FactoryTests.swift
//  FactoryTests
//
//  Created by Chakkra CHAK on 31/07/2017.
//  Copyright © 2017 Kisio Digital. All rights reserved.
//

import XCTest
@testable import Factory
import NavitiaSDK
import Alamofire
import AlamofireObjectMapper

class NavitiaSDKTests: XCTestCase {
    func testShouldRetrievePlacesResultsGivenValidConfigurationWithGeneratedAsyncFluentBuilder() {
        let expectation = self.expectation(description: "AutoComplete request completed")

        let navitiaSDK = NavitiaSDK(configuration: NavitiaConfiguration(token: "9e304161-bb97-4210-b13d-c71eaf58961c"))

        var result: String = ""
        navitiaSDK.placesApi.newPlacesRequestBuilder()
            .withQ("gare")
            .withCount(10)
            .get(completion: {
                (response: Places?, error: Error?) -> Void in
                result = response!.places!.first!.name!
                expectation.fulfill()
            })

        waitForExpectations(timeout: 30)
        XCTAssertEqual("Capdenac-Gare", result, "makeUrl")
    }

    func testShouldRetrieveRawPlacesResultsGivenValidConfigurationWithGeneratedAsyncFluentBuilder() {
        let expectation = self.expectation(description: "AutoComplete request completed")

        let navitiaSDK = NavitiaSDK(configuration: NavitiaConfiguration(token: "9e304161-bb97-4210-b13d-c71eaf58961c"))

        var result: String = ""
        navitiaSDK.placesApi.newPlacesRequestBuilder()
                .withQ("gare")
                .withCount(10)
                .rawGet(completion: {
                    (response: String?, error: Error?) -> Void in
                    result = response!
                    expectation.fulfill()
                })

        waitForExpectations(timeout: 30)
        XCTAssertTrue(result.contains("Capdenac-Gare"), "makeUrl")
    }

    func testShouldRaiseErrorGivenInvalidConfigurationWithGeneratedAsyncFluentBuilder() {
        let expectation = self.expectation(description: "AutoComplete request completed")

        let navitiaSDK = NavitiaSDK(configuration: NavitiaConfiguration(token: "balek"))

        var resultError: String = ""
        navitiaSDK.placesApi.newPlacesRequestBuilder()
                .withQ("gare")
                .withCount(10)
                .get(completion: {
                    (response: Places?, error: Error?) -> Void in
                    resultError = error!.localizedDescription
                    expectation.fulfill()
                })

        waitForExpectations(timeout: 30)
        XCTAssertEqual("Response status code was unacceptable: 401.", resultError, "AutoComplete request error with bad token")
    }

    func testShouldMakeUrlGivenValidConfigurationWithGeneratedAsyncFluentBuilder() {
        let navitiaSDK = NavitiaSDK(configuration: NavitiaConfiguration(token: "9e304161-bb97-4210-b13d-c71eaf58961c"))

        let url:String = navitiaSDK.placesApi.newPlacesRequestBuilder()
                .withQ("gare")
                .withCount(10)
                .makeUrl()

        XCTAssertEqual("https://api.navitia.io/v1/places?count=10&q=gare", url, "makeUrl")
    }
}
