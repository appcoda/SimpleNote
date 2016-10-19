//
//  Note.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/27/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import RealmSwift

class Note: Object {
  dynamic var title: String = ""
  dynamic var body: String = ""
}
