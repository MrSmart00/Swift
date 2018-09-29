import XCTest
@testable import TDDBCSwift

// TODO: [*] ボタンを押すとコーラが出る
// TODO: [*] 100円を入れるとコーラが出る
// TODO: [] 100円以外は入れられない

class ExampleXCTestTests: XCTestCase {
    
    func testボタンを押すとコーラが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush()
        XCTAssert(result == "コーラ")
    }
    
    func test100円を入れるとコーラが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 100)
        XCTAssert(result == "コーラ")
    }
    
}
