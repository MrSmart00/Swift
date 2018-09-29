import XCTest
@testable import TDDBCSwift

// TODO: [] ボタンを押すとコーラが出る

class ExampleXCTestTests: XCTestCase {
    
    func testボタンを押すとコーラが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush()
        XCTAssert(result == "コーラ")
    }
}
