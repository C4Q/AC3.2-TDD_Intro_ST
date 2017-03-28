//
//  AC3_2_TDD_IntroTests.swift
//  AC3.2-TDD_IntroTests
//
//  Created by Louis Tur on 3/28/17.
//  Copyright © 2017 Access Code. All rights reserved.
//

import XCTest
@testable import AC3_2_TDD_Intro

class AC3_2_TDD_IntroTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func countVowels(_ string: String) -> Int {
    return 0
  }
  
  func test_VowelCount_LouisShouldReturnThree() {
    let viewController = ViewController()
    
    let testString = "Louis"
    let numberOfVowels = viewController.numberVowels(testString)
    
    XCTAssertEqual(numberOfVowels, 3, "Vowel count should be accurate", file: "TDD_IntroTests.swift", line: 34)
  }
  
  func test_AllWordsCapitalized() {
    let viewController = ViewController()
    
    let testString = "this is a string"
    let expectedString = "This Is A String"
    
    // this will fail until you write the function for it
    let resultString = viewController.capitalizeWords(testString)
    
    XCTAssertEqual(expectedString, resultString, "First letter of each word should be capitalized")
  }
  
}
