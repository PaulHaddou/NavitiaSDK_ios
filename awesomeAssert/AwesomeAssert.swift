//
// Created by Chakkra CHAK on 10/03/2017.
// Copyright (c) 2017 Kisio Digital. All rights reserved.
//

import Foundation
import XCTest

class Assert {
    class AssertionString {
        let stringToTest:String

        init(_ stringToTest:String) {
            self.stringToTest = stringToTest
        }

        func isEqualTo(_ expectedString:String) {
            XCTAssertTrue(self.stringToTest == expectedString, formatAssertionError(actual: self.stringToTest, expected: expectedString))
        }

        private func formatAssertionError(actual: String, expected: String) -> String {
            var result:[String] = []

            result.append("####### ACTUAL #######")
            result.append(actual)
            result.append("###### EXPECTED ######")
            result.append(expected)
            result.append("######################")

            return result.joined(separator: "\n")
        }
    }

    class AssertionInt {
        let intToTest:Int

        init(_ stringToTest:Int) {
            self.intToTest = stringToTest
        }

        func isEqualTo(_ expectedInt:Int) {
            XCTAssertTrue(self.intToTest == expectedInt, formatAssertionError(actual: self.intToTest, expected: expectedInt))
        }

        private func formatAssertionError(actual: Int, expected: Int) -> String {
            var result:[String] = []

            result.append("####### ACTUAL #######")
            result.append(actual.description)
            result.append("###### EXPECTED ######")
            result.append(expected.description)
            result.append("######################")

            return result.joined(separator: "\n")
        }
    }

    class AssertionObject {
        let objectToTest:AnyObject

        init(_ objectToTest:AnyObject) {
            self.objectToTest = objectToTest
        }

        func isNotNull() {
            XCTAssertTrue(self.objectToTest != nil)
        }

        func isNull() {
            XCTAssertTrue(self.objectToTest == nil)
        }
    }

    static func that(_ intToTest:Int) -> AssertionInt {
        return AssertionInt(intToTest)
    }

    static func that(_ stringToTest:String) -> AssertionString {
        return AssertionString(stringToTest)
    }

    static func that(_ objectToTest:AnyObject) -> AssertionObject {
        return AssertionObject(objectToTest)
    }
}