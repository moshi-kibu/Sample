import Foundation 
import XCTest

class ExampleModel {
    var exampleString: String?

    func populateExampleString(_ text: String?) {
        exampleString = text
    } 
}

class ExampleModelTests: XCUITestCase {
    func testPopulateExampleString() {
        let exampleModel = ExampleModel()

        //BEFORE CASE
        XCTAssertNil(exampleModel.exampleString)

        //LOGIC UNDER TEST
        let testText = "oh hai World!"
        exampleModel.populateExampleString(testText)
        
        //AFTER CASE
        XCTAssertEqual(exampleModel.exampleString, testText)
    }
}
