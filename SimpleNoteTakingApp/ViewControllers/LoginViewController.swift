//
//  ViewController.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/27/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!

  lazy var homeViewController : HomeViewController = {
    let viewController = UIStoryboard.initializeViewController(HomeViewController.self)
    return viewController
  }()

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: false)
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.setNavigationBarHidden(false, animated: false)
  }

  @IBAction func onTapLoginButton(_ sender: AnyObject) {
    guard let username = usernameTextField.text , username.characters.count > 0 else {
      showErrorAlertWithMessage("Username cannot be empty")
      return
    }
    guard let password = passwordTextField.text , password.characters.count > 0 else {
      showErrorAlertWithMessage("Password cannot be empty")
      return
    }
    guard username == correctUsername && password == correctPassword else {
      showErrorAlertWithMessage("Username or password is incorrect")
      return
    }
    navigationController?.pushViewController(homeViewController, animated: true)
  }
}
