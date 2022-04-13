//
//  UnitTestSampleTests.swift
//  UnitTestSampleTests
//
//  Created by Ibrahim Hosseini on 4/13/22.
//

import XCTest

@testable import UnitTestSample

class UnitTestSampleTests: XCTestCase {

  var sut: BullsEyeGame!

  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = BullsEyeGame()
  }

  override func tearDownWithError() throws {
    sut = nil
    try super.tearDownWithError()
  }

  func testScoreIsComputedWhenGuessIsHigherThanTarget() {
    // given: Here, you set up any values needed
    let guess = sut.targetValue - 5 // 50 + 5

    // when: In this section, you’ll execute the code being tested
    sut.check(guess: guess)

    // then: This is the section where you’ll assert the result you expect with a message that prints if the test fails
    XCTAssertEqual(sut.scoreRound, 105, "Score computed from guess is wrong")
  }

}
