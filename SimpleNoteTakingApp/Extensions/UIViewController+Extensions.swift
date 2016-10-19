//
//  UIViewController+Extensions.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/27/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

extension UIViewController {
  func showErrorAlertWithMessage(_ message: String) {
    let alertController = UIAlertController(title: "Error", message:message, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
    present(alertController, animated: true, completion: nil)
  }
}
