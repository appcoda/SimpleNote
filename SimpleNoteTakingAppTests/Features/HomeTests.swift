//
//  NoteTests.swift
//  SimpleNoteTakingApp
//
//  Created by Hoang Tran on 9/28/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

class HomeTests: BaseUITests {

  override func beforeEach() {
    super.beforeEach()
    haveNoNotes()
  }

  func testNoNotes() {
    visitHomeScreen()
    expectToSeeLabel("No notes")
    expectNotToSeeNoteList()
  }

  func testCreateNewNote() {
    visitHomeScreen()
    tapButton("Add note")
    expectTheCreateButtonToBeDisabled()
    fillInNoteTitle("new note")
    expectTheCreateButtonToBeEnabled()
    fillInNoteBody("new body")
    tapButton("Create")
    expectToSeeNoteWithTitle("new note", body: "new body", atRow: 0)
    expectNumberOfNotesInListToEqual(1)
  }

  func testEditNote() {
    have3Notes()
    visitHomeScreen()
    tapOnNoteAtRow(1)
    updateNoteTitleTo("updated note")
    updateNoteBodyTo("updated body")
    tapButton("Update")
    expectToSeeNoteWithTitle("updated note", body: "updated body", atRow: 1)
  }
  
  func testDeleteNote() {
    have3Notes()
    visitHomeScreen()
    deleteANote()
    expectNumberOfNotesInListToEqual(2)
    deleteANote()
    expectNumberOfNotesInListToEqual(1)
    deleteANote()
    expectToSeeLabel("No notes")
  }

}
