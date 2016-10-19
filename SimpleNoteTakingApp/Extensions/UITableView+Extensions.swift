//
//  UITableView+Extensions.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/27/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

extension UITableView {
  func defaultCellWithReuseID(_ reuseID: String) -> UITableViewCell {
    return self.dequeueReusableCell(withIdentifier: reuseID) ?? UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: reuseID)
  }
}
