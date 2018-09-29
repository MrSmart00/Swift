import XCTest
@testable import TDDBCSwift

// TODO: [*] ボタンを押すとコーラが出る
// TODO: [*] 100円を入れるとコーラが出る
// TODO: [*] 100円以外は入れられない
// TODO: [*] ボタンを押すと烏龍茶が出る


class ExampleXCTestTests: XCTestCase {
    
    func testボタンを押すとコーラが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush()
        XCTAssert(result == "コーラ")
    }
    
    func test100円を入れるとコーラが出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 100, drink: "コーラ")
        XCTAssert(result == "コーラ")
    }
    
    func test100円以外は入れられない() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 101, drink: "コーラ")
        XCTAssert(result != "コーラ")
    }
    
    func test100円を入れると烏龍茶が出る() {
        let jihanki = Jihanki()
        let result = jihanki.buttonPush(money: 100, drink: "烏龍茶")
        XCTAssert(result == "烏龍茶")
    }

}
