//
//  MyApp2Tests.swift
//  MyApp2Tests
//
//  Created by 安西佑介 on 2019/06/16.
//  Copyright © 2019 安西佑介. All rights reserved.
//

import XCTest
@testable import MyApp2

class MyApp2Tests: XCTestCase {
    // Meal class tests
    func testMealInitializationSucesseds() {
        // Zero assertion
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest assertion
        let positiveRatingMeal = Meal.init(name: "Five", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        //NegativeRating
        let negativeRatingMeal = Meal.init(name: "negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyRatingMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
