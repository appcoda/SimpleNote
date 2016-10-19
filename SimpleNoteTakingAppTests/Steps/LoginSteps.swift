//
//  LoginSteps.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/28/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

extension LoginTests {
  func clearOutUsernameAndPasswordFields() {
    tester().clearTextFromView(withAccessibilityLabel: "Login - Username")
    tester().clearTextFromView(withAccessibilityLabel: "Login - Password")
  }

  func fillInWrongPassword() {
    fillIn("Login - Password", withText: "wrongPassword")
  }

  func expectToGoToHomeScreen() {
    tester().waitForAbsenceOfView(withAccessibilityLabel: "Login - Username")
    tester().waitForAbsenceOfView(withAccessibilityLabel: "Login - Password")
    tester().waitForAbsenceOfView(withAccessibilityLabel: "Login")
    tester().waitForView(withAccessibilityLabel: "No notes")
    tester().waitForView(withAccessibilityLabel: "Add note")
  }
}
