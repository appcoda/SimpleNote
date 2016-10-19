//
//  BaseUITests.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/28/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import KIF
import Realm
import RealmSwift

class BaseUITests: KIFTestCase {
  override func beforeAll() {
    super.beforeAll()
    useTestDatabase()
  }

  override func beforeEach() {
    super.beforeEach()
    backToRoot()
  }
}
