//
//  KIF+Extensions.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/28/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import KIF

extension XCTestCase {
  func tester(_ file : String = #file, _ line : Int = #line) -> KIFUITestActor {
    return KIFUITestActor(inFile: file, atLine: line, delegate: self)
  }
  
  func system(_ file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
    return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
  }
}

extension KIFTestActor {
  func tester(_ file : String = #file, _ line : Int = #line) -> KIFUITestActor {
    return KIFUITestActor(inFile: file, atLine: line, delegate: self)
  }
  
  func system(_ file : String = #file, _ line : Int = #line) -> KIFSystemTestActor {
    return KIFSystemTestActor(inFile: file, atLine: line, delegate: self)
  }
}
