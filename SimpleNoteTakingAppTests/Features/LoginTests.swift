//
//  LoginTests.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/28/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

class LoginTests: BaseUITests {
  override func beforeEach() {
    super.beforeEach()
    clearOutUsernameAndPasswordFields()
  }

  func testEmptyUsername() {
    tapButton("Login")
    expectToSeeAlert("Username cannot be empty")
    tapButton("OK")
  }

  func testEmptyPassword() {
    fillInUsername()
    tapButton("Login")
    expectToSeeAlert("Password cannot be empty")
    tapButton("OK")
  }

  func testWrongUsernameOrPassword() {
    fillInUsername()
    fillInWrongPassword()
    tapButton("Login")
    expectToSeeAlert("Username or password is incorrect")
    tapButton("OK")
  }

  func testCorrectUsernameAndPassword() {
    fillInUsername()
    fillInCorrectPassword()
    tapButton("Login")
    expectToGoToHomeScreen()
  }
  
}
