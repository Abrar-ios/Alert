//
//  ViewControllerTests.swift
//  AlertTests
//
//  Created by HAQQQABD on 19/08/2023.
//

import XCTest
import ViewControllerPresentationSpy
@testable import Alert
@MainActor

final class ViewControllerTests: XCTestCase {
    private var alertVerifier: AlertVerifier!
    private var sut: ViewController!
    
    @MainActor override func setUp() {
        super.setUp()
        alertVerifier = AlertVerifier()
        let sb = UIStoryboard(name: "Main", bundle: nil)
        sut = sb.instantiateViewController(identifier: String(describing: ViewController.self))
        sut.loadViewIfNeeded()
        
    }
    
    override func tearDown() {
        alertVerifier = nil
        sut = nil
        super.tearDown()
    }
    
    @MainActor func test_tappingButton_shouldShowAlert(){
        tap(sut.button)
        executeRunLoop()
        alertVerifier.verify(title: "Do the thing?", message: "Let us know if you want to do the thing", animated: true, actions:[
            .cancel("Cancel"),
            .default("Ok")
        ], presentingViewController: sut)
        XCTAssertEqual(alertVerifier.preferredAction?.title, "Ok")
    }
    
    func test_executeAlertAction_withOkButton() throws {
        tap(sut.button)
        try alertVerifier.executeAction(forButton: "Ok")
        
    }
}
