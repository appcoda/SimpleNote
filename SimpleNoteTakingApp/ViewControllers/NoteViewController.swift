//
//  NoteViewController.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/28/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit
import RealmSwift
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}


class NoteViewController: UIViewController {
  var note: Note? {
    didSet {
      guard titleTextField != nil && bodyTextView != nil else { return }
      titleTextField.text = note?.title
      bodyTextView.text = note?.body
      navigationItem.rightBarButtonItem?.title = note != nil ? "Update" : "Create"
      onNoteTitleTextFieldChanged(titleTextField)
    }
  }

  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var bodyTextView: UITextView!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupNavigationButtons()
    setupBodyTextView()
  }

  func onTapCreateButton(_ sender: AnyObject) {
    _ = navigationController?.popViewController(animated: true)
    saveNoteToDatabase()
    NotificationCenter.default.post(name: Notification.Name(rawValue: notificationNewNoteCreated), object: nil)
  }

  func onTapCancelButton(_ sender: AnyObject) {
    _ = navigationController?.popViewController(animated: true)
  }

  @IBAction func onNoteTitleTextFieldChanged(_ sender: AnyObject) {
    navigationItem.rightBarButtonItem?.isEnabled = titleTextField.text?.characters.count > 0
  }
}

extension NoteViewController {
  fileprivate func setupNavigationButtons() {
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Create", style: .plain, target: self, action: #selector(NoteViewController.onTapCreateButton))
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(NoteViewController.onTapCancelButton))
  }

  fileprivate func setupBodyTextView() {
    bodyTextView.layer.borderWidth = 0.5
    bodyTextView.layer.borderColor = UIColor.colorWithRed(red: 204, green: 204, blue: 204).cgColor
    bodyTextView.layer.cornerRadius = 4;
  }

  fileprivate func saveNoteToDatabase() {
    let realm = try! Realm()
    try! realm.write {
      let note = self.note ?? Note()
      note.title = titleTextField.text!
      note.body = bodyTextView.text!
      realm.add(note)
    }
  }
}
