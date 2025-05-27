//
//  hittableTestUITests.swift
//  hittableTestUITests
//
//  Created by Kazuaki Matsuo on 5/25/25.
//

import XCTest

final class hittableTestUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        let allElements = app.descendants(matching: .any)
        var allHittableElements = [XCUIElement]()
        var allHittableElementLabels = [String]()

        if app.isHittable {
            allHittableElementLabels.append(app.label)
            allHittableElements.append(app)
        }
        for i in 0..<allElements.count {
            let element = allElements.element(boundBy: i)
            if element.isHittable {
                allHittableElementLabels.append(element.label)
                allHittableElements.append(element)
            }
        }

        // with 'popover'
        // XCTAssertEqual(allHittableElements.count, 10)
        // XCTAssertEqual(allHittableElementLabels, [
        //     "hittableTest", "", "", "", "", "", "", "", "", "Big Button"
        // ])

        // without 'popover' and no accessibilityHidden(true)
        // XCTAssertEqual(allHittableElements.count, 8)
        // XCTAssertEqual(allHittableElementLabels, [
        //     "hittableTest", "", "", "", "", "", "Globe", "Hello, world!"
        // ])

        // without 'popover' and with accessibilityHidden(true) for "Hello, world!"
        XCTAssertEqual(allHittableElements.count, 7)
        XCTAssertEqual(allHittableElementLabels, [
            "hittableTest", "", "", "", "", "", "Globe"
        ])

    }
}
