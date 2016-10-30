//
//  example_iosTests.swift
//  example-iosTests
//
//  Created by Gaurav Gupta on 10/27/16.
//  Copyright © 2016 Gaurav Gupta. All rights reserved.
//

import XCTest
@testable import example_ios

class example_iosTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    func testMealInitValid() {
        let meal = Meal(name: "new meal", photo: nil, rating: 5)
        XCTAssertNotNil(meal)
    }

    func testMealInitEmptyName() {
        let meal = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(meal, "Empty name is invalid")
    }

    func testMealInitNegativeRating() {
        let meal = Meal(name: "new meal", photo: nil, rating: -1)
        XCTAssertNil(meal, "Invalid Rating -1")
    }
}
