//
//  UIStoryboard+Extensions.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/27/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

extension UIStoryboard {
  class func main() -> UIStoryboard {
    return UIStoryboard(name: "Main", bundle: nil)
  }

  class func initializeViewController<T>(_ viewController: T.Type) -> T where T: UIViewController {
    return UIStoryboard.main().instantiateViewController(withIdentifier: String(describing: viewController)) as! T
  }
}
