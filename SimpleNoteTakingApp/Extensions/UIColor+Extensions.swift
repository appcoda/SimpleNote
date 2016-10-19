//
//  UIColor+Extensions.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/28/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

extension UIColor {
  class func colorWithRed(red: NSInteger, green: NSInteger, blue: NSInteger) -> UIColor {
    let max: CGFloat = 255.0
    return UIColor(red: CGFloat(red) / max, green: CGFloat(green) / max, blue: CGFloat(blue) / max, alpha: 1)
  }
}
